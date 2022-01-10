package com.kendoui.spring.controllers.mediaplayer;

import java.util.ArrayList;
import java.util.Locale;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.kendoui.spring.models.Video;

@Controller("mediaplayer-playlist-controller")
@RequestMapping(value = "/mediaplayer/")
public class PlaylistController {

    @RequestMapping(value = "playlist", method = RequestMethod.GET)
    public String index(Locale locale, Model model) {

        ArrayList<Video> videos = new ArrayList<Video>();
        videos.add(new Video(
                "Cognitive first",
                "https://www.youtube.com/watch?v=ykQhk1zFVeg",
                "http://img.youtube.com/vi/N3P6MyvL-t4/1.jpg"));
        videos.add(new Video("Build HIPAA-Compliant Healthcare Apps Fast",
                "https://www.youtube.com/watch?v=dyvxivS5EcI",
                "http://img.youtube.com/vi/_S63eCewxRg/1.jpg"));
        videos.add(new Video(
                "ProgressNEXT 2018 Highlights",
                "https://www.youtube.com/watch?v=Gp7tcOcSKAU",
                "http://img.youtube.com/vi/DYsiJRmIQZw/1.jpg"));
        videos.add(new Video("Kendo UI Testimonial",
                "https://www.youtube.com/watch?v=itoKeywVNBI",
                "http://img.youtube.com/vi/gNlya720gbk/1.jpg"));
        videos.add(new Video("Introducing Test Studio DevEdition",
                "https://www.youtube.com/watch?v=A2rmIx9rPG0",
                "http://img.youtube.com/vi/rLtTuFbuf1c/1.jpg"));
        videos.add(new Video(
                "Progress Application Server OpenEdge",
                "https://www.youtube.com/watch?v=3Ce11N9udR4&list=PLC679RvCan2BJ9HCdUyZhnhHKActnrape",
                "https://i.ytimg.com/vi/CpHKm2NruYc/1.jpg"));

        model.addAttribute("videos", videos);

        return "mediaplayer/playlist";
    }
}
