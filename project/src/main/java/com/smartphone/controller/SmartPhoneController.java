package com.smartphone.controller;

import java.util.ArrayList; 
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.stream.Collectors;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.smartphone.entity.SmartPhone;
import com.smartphone.service.SmartPhoneService;

@Controller
public class SmartPhoneController {

	@Autowired
	SmartPhoneService smartphoneservice;

	@RequestMapping("/")
	public String index() {
		return "home.jsp";
	}

	@RequestMapping("/home")
	public String home() {
		return "home.jsp";
	}

	@RequestMapping("/mobilelist")
	public ModelAndView mobiles() {
		ModelAndView mv = new ModelAndView("mobilelist.jsp");
		List<SmartPhone> smartphone = smartphoneservice.findAll();
		mv.addObject("SmartPhone", smartphone);
		return mv;
	}

	@RequestMapping("/mobilelistpricedesc")
	public ModelAndView mobilespricedesc() {
		ModelAndView mv = new ModelAndView("mobilelist.jsp");
		List<SmartPhone> smartphone = smartphoneservice.findAll();
		List<SmartPhone> sortedList = smartphone.stream()
				.sorted(Comparator.comparingLong(SmartPhone::getPrice).reversed()).collect(Collectors.toList());
		mv.addObject("SmartPhone", sortedList);
		return mv;
	}

	@RequestMapping("/mobilelistpriceasc")
	public ModelAndView mobilespriceasc() {
		ModelAndView mv = new ModelAndView("mobilelist.jsp");
		List<SmartPhone> smartphone = smartphoneservice.findAll();
		List<SmartPhone> sortedList = smartphone.stream().sorted(Comparator.comparingLong(SmartPhone::getPrice))
				.collect(Collectors.toList());
		mv.addObject("SmartPhone", sortedList);
		return mv;
	}

	@RequestMapping("/mobilelistnamedesc")
	public ModelAndView mobilesnamedesc() {
		ModelAndView mv = new ModelAndView("mobilelist.jsp");
		List<SmartPhone> smartphone = smartphoneservice.findAll();
		List<SmartPhone> sortedList = smartphone.stream()
				.sorted(Comparator.comparing(SmartPhone::getMobile_name, String.CASE_INSENSITIVE_ORDER).reversed())
				.collect(Collectors.toList());
		mv.addObject("SmartPhone", sortedList);
		return mv;
	}

	@RequestMapping("/mobilelistnameasc")
	public ModelAndView mobilesnameasc() {
		ModelAndView mv = new ModelAndView("mobilelist.jsp");
		List<SmartPhone> smartphone = smartphoneservice.findAll();
		List<SmartPhone> sortedList = smartphone.stream()
				.sorted(Comparator.comparing(SmartPhone::getMobile_name, String.CASE_INSENSITIVE_ORDER))
				.collect(Collectors.toList());
		mv.addObject("SmartPhone", sortedList);
		return mv;
	}
		@RequestMapping("/compare")
	public ModelAndView compare() {
		ModelAndView mv = new ModelAndView("compare.jsp");
		List<SmartPhone> smartphone = smartphoneservice.findAll();
		List<String> smartPhoneIds = Arrays.asList("0,0".split(","));
		List<SmartPhone> filteredList = new ArrayList<SmartPhone>();
		int incVal = 1;
		for (final String smartPhoneId : smartPhoneIds) {
			List<SmartPhone> filteredListTmp = smartphone.stream()
					.filter(smp -> smartPhoneId.equalsIgnoreCase(String.valueOf(smp.getId())))
					.collect(Collectors.toList());
			if (filteredListTmp.isEmpty()) {
				filteredListTmp.add(new SmartPhone());
			}
			filteredList.addAll(filteredListTmp);
			mv.addObject("ModelNo" + incVal, smartPhoneId);
			incVal++;
		}

		mv.addObject("SmartPhone", smartphone);
		mv.addObject("SmartPhoneCompare", filteredList);
		return mv;
	}

	@RequestMapping("/compareids/{ids}")
	public ModelAndView compareIds(@PathVariable("ids") String ids) {
		ModelAndView mv = new ModelAndView("/compareids.jsp");
		List<SmartPhone> smartphone = smartphoneservice.findAll();
		List<String> smartPhoneIds = Arrays.asList(ids.split(","));
		List<SmartPhone> filteredList = new ArrayList<SmartPhone>();
		int incVal = 1;
		Map<String, Double> modalIteratebat = new HashMap<String, Double>();
		Map<String, Double> modalIteratesto = new HashMap<String, Double>();
		for (final String smartPhoneId : smartPhoneIds) {
			List<SmartPhone> filteredListTmp = smartphone.stream()
					.filter(smp -> smartPhoneId.equalsIgnoreCase(String.valueOf(smp.getId())))
					.collect(Collectors.toList());
			if (!filteredListTmp.isEmpty()) {
				Double lgBattery = Double.valueOf(StringUtils.replaceIgnoreCase(filteredListTmp.get(0).getBattery(), "mah", ""));
				Double lgPrice = Double.valueOf(filteredListTmp.get(0).getPrice().toString());
				Double lgStorage = Double.valueOf(StringUtils.replaceIgnoreCase(filteredListTmp.get(0).getStorage(), "gb", ""));
				Double lgRAM = Double.valueOf(StringUtils.replaceIgnoreCase(filteredListTmp.get(0).getRAM(), "gb", ""));

				Double batPrice = lgBattery / lgPrice;
				modalIteratebat.put("ModelNobmpp" + incVal, batPrice);

				Double storageRAM = lgStorage / lgRAM;
				modalIteratesto.put("ModelNospr" + incVal, storageRAM);

			} else {
				Double zeroDob = 0D;
				modalIteratebat.put("ModelNobmpp" + incVal, zeroDob);
				modalIteratesto.put("ModelNospr" + incVal, zeroDob);
			}
			if (filteredListTmp.isEmpty()) {
				filteredListTmp.add(new SmartPhone());
			}
			filteredList.addAll(filteredListTmp);
			mv.addObject("ModelNo" + incVal, smartPhoneId);

			incVal++;
		}

		modalIteratebat = modalIteratebat.entrySet().stream()
				.sorted(Map.Entry.<String, Double>comparingByValue().reversed()).collect(Collectors.toMap(
						Map.Entry::getKey, Map.Entry::getValue, (oldValue, newValue) -> oldValue, LinkedHashMap::new));

		modalIteratesto = modalIteratesto.entrySet().stream()
				.sorted(Map.Entry.<String, Double>comparingByValue().reversed()).collect(Collectors.toMap(
						Map.Entry::getKey, Map.Entry::getValue, (oldValue, newValue) -> oldValue, LinkedHashMap::new));

		int batRank = 1;
		for (Entry<String, Double> smartPhoneEntry : modalIteratebat.entrySet()) {
			mv.addObject(smartPhoneEntry.getKey(), batRank);
			batRank++;
		}

		int stoRank = 1;
		for (Entry<String, Double> smartPhoneEntry : modalIteratesto.entrySet()) {
			mv.addObject(smartPhoneEntry.getKey(), stoRank);
			stoRank++;
		}

		mv.addObject("SmartPhone", smartphone);
		mv.addObject("SmartPhoneCompare", filteredList);
		return mv;
	}

	@RequestMapping("/aboutus")
	public String aboutus() {
		return "aboutus.jsp";
	}

}
