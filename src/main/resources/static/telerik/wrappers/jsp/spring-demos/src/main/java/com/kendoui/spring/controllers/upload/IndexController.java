package com.kendoui.spring.controllers.upload;

import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.kendoui.spring.models.DropDownListItem;

@Controller("upload-home-controller")
@RequestMapping(value="/upload/")
public class IndexController {
    
    private class FileResult
    {
        public boolean uploaded;
        public String fileUid;
    }
    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String index(Model model) {
        
        model.addAttribute("fileTypes", new DropDownListItem[] {
                new DropDownListItem("jpg", "jpg"),
                new DropDownListItem("pdf", "pdf"),
                new DropDownListItem("docx", "docx"),
                new DropDownListItem("xlsx", "xlsx"),
                new DropDownListItem("zip", "zip")
        });
        
        return "upload/index";
    }
    
    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.POST)
    public String save(@RequestParam List<MultipartFile> files, Model model) {
        model.addAttribute("files", files);
        
        
        return "upload/results";
    }
    
    @RequestMapping(value = "/index/chunkSave", method = RequestMethod.POST)
    public @ResponseBody String chunksave(@RequestParam List<MultipartFile> files, String metadata) throws JsonGenerationException, JsonMappingException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        long totalChunks = 0;
        long chunkIndex = 0;
        String uploadUid = "";
        String fileName = "";
        //map json to student
          
        if(metadata == null){
            return "";
        }
        
        JsonNode rootNode = mapper.readTree(metadata);
        totalChunks = rootNode.path("totalChunks").getLongValue();
        chunkIndex = rootNode.path("chunkIndex").getLongValue();
        uploadUid = rootNode.path("uploadUid").getTextValue();
        fileName = rootNode.path("fileName").getTextValue();
        
        OutputStream output = null;
        // Save the files
        
         for (MultipartFile file : files) {
            //byte[] bytes = file.getBytes();
            // String rootPath = "C:\\Users\\username\\Desktop";
            // File dir = new File(rootPath + File.separator + "tmpFiles");
            // if (!dir.exists())
            //    dir.mkdirs();

            // Create the file on server
            //  File serverFile = new File(dir.getAbsolutePath()
            //        + File.separator + fileName);
            // BufferedOutputStream stream = new BufferedOutputStream(
            //         new FileOutputStream(serverFile,true));
            // stream.write(bytes);
            //stream.close();
         }
        
        FileResult fileBlob = new FileResult();
        fileBlob.uploaded = totalChunks - 1 <= chunkIndex;
        fileBlob.fileUid = uploadUid;

        return mapper.writeValueAsString(fileBlob);
    }
    
    @RequestMapping(value = "/index/remove", method = RequestMethod.POST)
    public @ResponseBody String remove(@RequestParam String[] fileNames) {
        // Remove the files
        // for (String fileName : fileNames) {
        // }
        // Return an empty string to signify success
        return "";
    }
}