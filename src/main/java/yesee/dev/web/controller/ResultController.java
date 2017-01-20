package yesee.dev.web.controller;

import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import yesee.dev.model.DataTransfer;
import yesee.dev.model.bean.UserInfo;
import yesee.dev.model.service.UserInfoService;

@Controller
@RequestMapping("/")
public class ResultController {

	@Autowired
	private UserInfoService userInfoService;

	private static final Logger LOGGER = LoggerFactory.getLogger(ResultController.class);

	@RequestMapping("/resultController")
	public ModelAndView loadUserInfo(UserInfo userInfo) {
		List<UserInfo> userInfoList = userInfoService.findAll();
		return new ModelAndView("result", "userInfoList", userInfoList);
	}

//	@RequestMapping(value = "/showDataListJs2", method = RequestMethod.POST)
//	@ResponseBody
//	public List<UserInfo> showDataList2() {
//		List<UserInfo> userInfoList = userInfoService.findAll();
//		LOGGER.info("-------------------------------------");
//
////		Map<String, Object> model = new HashMap<String, Object>();
////		model.put("list", userInfoList);
//		UserInfo userInfo = userInfoService.findById(2).get(0);
//		return userInfoList;
//	}
	
	@RequestMapping("/showDataListJs3")
	public ModelAndView showDataListJs3(UserInfo userInfo) {
		List<UserInfo> userInfoList = userInfoService.findAll();
		return new ModelAndView("data", "userInfoList", userInfoList);
	}
	

	 @RequestMapping(value = "/showDataListJs2", method = RequestMethod.POST, produces="application/json")
	 @ResponseBody
	 public DataTransfer showDataList2() {
	 List<UserInfo> userInfoList = userInfoService.findAll();
	 // return new ModelAndView("page", "showUserInfoList" , userInfoList);
	 DataTransfer dataTransfer = new DataTransfer();
	 dataTransfer.setIndex(0);
	 dataTransfer.setUserInfoList123(userInfoList);
	 return dataTransfer;
	
	 }

	@RequestMapping(value = "/showDataListJs", method = RequestMethod.GET)
	@ResponseBody
	public String showDataList() {
		String result = "<tr><th>Id</th><th>User Name</th><th>Country</th><th>Phone</th><th>Date Time</th><th>Delete</th></tr>";
		List<UserInfo> userInfoList = userInfoService.findAll();
		for (int i = 0; i < userInfoList.size(); i++) {
			Integer id1 = userInfoList.get(i).getId();
			String username = userInfoList.get(i).getUsername();
			String country = userInfoList.get(i).getCountry();
			String phone = userInfoList.get(i).getPhone();
			String dateTime = userInfoList.get(i).getDateTime().toString();
			LOGGER.info(" +++++++++++++++date time: " + dateTime);
			System.out.println(" +++++++++++++++date time: " + dateTime);
			result = result + "<tr><td>" + id1 + "</td>" + "<td>" + username + "</td>" + "<td>" + country + "</td>"
					+ "<td>" + phone + "</td>" + "<td>" + dateTime + "</td>" + "</tr>";
		}
		//
		return result;
	}

	@RequestMapping(value = { "/deleteUserInfo/{id}" }, method = RequestMethod.GET)
	public String deleteUserInfoById(@PathVariable Integer id) {
		userInfoService.deleteUserInfo(id);
		return "redirect:/resultController.do";
	}

	// @RequestMapping(value = "deleteUserInfo.do", method = RequestMethod.POST)
	//// @ResponseBody
	// public ModelAndView deleteUserInfoByAjax(int id) {
	// LOGGER.info(" New Delete Function {}" , id);
	// userInfoService.deleteUserInfo(id);
	// return new ModelAndView("redirect:/resultController.do", "status", true);
	// }

	@RequestMapping(value = "/deleteUserInfoJs", method = RequestMethod.POST)
	public void deleteUserInfoByIdJs(Integer id) {
		LOGGER.info(" New Delete Function {}", id);
		userInfoService.deleteUserInfo(id);
	}

	@RequestMapping(value = "/editUserInfo", method = RequestMethod.POST)
	public String editUserInfo(UserInfo userInfo) { // ModelAttribute("userInfo")
		userInfo.setDateTime(new Date());
		LOGGER.info("go to editUserInfo controller");
		userInfoService.updateUserInfo(userInfo);
		return "redirect:/resultController.do";
	}

	@RequestMapping(value = "/editUserInfoJs", method = RequestMethod.POST)
	public void editUserInfoJs(UserInfo userInfo) { // ModelAttribute("userInfo")
		userInfo.setDateTime(new Date());
		LOGGER.info("go to editUserInfo controller");
		userInfoService.updateUserInfo(userInfo);

	}

	@RequestMapping(value = "/addUserInfo", method = RequestMethod.POST)
	public String addUserInfo(@Validated UserInfo userInfo, BindingResult bindingResult) { // ModelAttribute("userInfo")
		userInfo.setDateTime(new Date());
		if (bindingResult.hasErrors()) {
			LOGGER.info("Validation Error");
			return "redirect:/resultController.do";
		} else {
			LOGGER.info("Validation fine");
			userInfoService.addUserInfo(userInfo);
			return "redirect:/resultController.do";
		}
	}

	@RequestMapping(value = "/addUserInfoJs", method = RequestMethod.POST)
	public void addUserInfoJs(UserInfo userInfo) { // ModelAttribute("userInfo")
		userInfo.setDateTime(new Date());
		LOGGER.info("go to addUserInfoJs controller");
		userInfoService.addUserInfo(userInfo);

	}

}
