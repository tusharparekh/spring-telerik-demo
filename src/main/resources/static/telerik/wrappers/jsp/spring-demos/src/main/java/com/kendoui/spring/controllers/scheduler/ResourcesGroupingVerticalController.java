package com.kendoui.spring.controllers.scheduler;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kendoui.spring.models.Meeting;
import com.kendoui.spring.models.MeetingDao;

@Controller("scheduler-resources-grouping-vertical-controller")
@RequestMapping(value="/scheduler/")
public class ResourcesGroupingVerticalController {
    @Autowired 
    private MeetingDao meeting;
    
    @RequestMapping(value = "/resources-grouping-vertical", method = RequestMethod.GET)
    public String resources(Locale locale, Model model) {        
        return "scheduler/resources-grouping-vertical";
    }
    
    @RequestMapping(value = "/resources-grouping-vertical/read", method = RequestMethod.POST)
    public @ResponseBody List<Meeting> read() {

        return meeting.getList();
    }
    
    @RequestMapping(value = "/resources-grouping-vertical/create", method = RequestMethod.POST)
    public @ResponseBody List<Meeting> create(@RequestBody ArrayList<Map<String, Object>> models) throws ParseException {
        List<Meeting> meetings = new ArrayList<Meeting>();
        
        for (Map<String, Object> model : models) {
            Meeting meeting = new Meeting();
            
            meeting.setDescription((String)model.get("description"));
            meeting.setTitle((String)model.get("title"));
            
            SimpleDateFormat iso8601 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
            iso8601.setTimeZone(TimeZone.getTimeZone("UTC"));
            
            meeting.setStart(iso8601.parse((String)model.get("start")));
            meeting.setEnd(iso8601.parse((String)model.get("end")));
            meeting.setIsAllDay((boolean)model.get("isAllDay"));
            meeting.setRecurrenceRule((String)model.get("recurrenceRule"));
            meeting.setRecurrenceException((String)model.get("recurrenceException"));
            meeting.setRecurrenceId((Integer)model.get("recurrenceId"));
            meeting.setRoomId((Integer)model.get("roomId"));
            meeting.setAttendees((List<Integer>)model.get("attendees"));
            
            meetings.add(meeting);
        }
        
        meeting.saveOrUpdate(meetings);
        
        return meetings;
    }
    
    @RequestMapping(value = "/resources-grouping-vertical/update", method = RequestMethod.POST)
    public @ResponseBody List<Meeting> update(@RequestBody ArrayList<Map<String, Object>> models) throws ParseException {
        List<Meeting> meetings = new ArrayList<Meeting>();
        
        for (Map<String, Object> model : models) {
            Meeting meeting = new Meeting();
            
            meeting.setMeetingId((int)model.get("meetingId"));
            meeting.setDescription((String)model.get("description"));
            meeting.setTitle((String)model.get("title"));
            
            SimpleDateFormat iso8601 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
            iso8601.setTimeZone(TimeZone.getTimeZone("UTC"));
            
            meeting.setStart(iso8601.parse((String)model.get("start")));
            meeting.setEnd(iso8601.parse((String)model.get("end")));
            meeting.setIsAllDay((boolean)model.get("isAllDay"));
            meeting.setRecurrenceRule((String)model.get("recurrenceRule"));
            meeting.setRecurrenceException((String)model.get("recurrenceException"));
            meeting.setRecurrenceId((Integer)model.get("recurrenceId"));
            meeting.setRoomId((Integer)model.get("roomId"));
            meeting.setAttendees((List<Integer>)model.get("attendees"));
            
            meetings.add(meeting);
        }
        
        meeting.saveOrUpdate(meetings);
        
        return meetings;
    }
    
    @RequestMapping(value = "/resources-grouping-vertical/destroy", method = RequestMethod.POST)
    public @ResponseBody List<Meeting> destroy(@RequestBody ArrayList<Map<String, Object>> models) throws ParseException {
        List<Meeting> meetings = new ArrayList<Meeting>();
        
        for (Map<String, Object> model : models) {
            Meeting meeting = new Meeting();
            
            meeting.setMeetingId((int)model.get("meetingId"));
            
            SimpleDateFormat iso8601 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
            iso8601.setTimeZone(TimeZone.getTimeZone("UTC"));
            meeting.setStart(iso8601.parse((String)model.get("start")));
            meeting.setEnd(iso8601.parse((String)model.get("end")));

            meetings.add(meeting);
        }
        
        meeting.delete(meetings);
        
        return meetings;
    } 
}