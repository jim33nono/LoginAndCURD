package yesee.dev.web.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;


import yesee.dev.model.bean.UserInfo;
import yesee.dev.model.service.UserInfoService;

@Controller
public class LoginController {

	@Autowired
	private UserInfoService userInfoService;

	private static final Logger LOGGER = LoggerFactory.getLogger(LoginController.class);

	@RequestMapping(value = { "/login" })
	// @RequestMapping("/")
	public String login(UserInfo userInfo) {
		LOGGER.info("Connected Login Page Successfully");
		return "login";
	}
	


	@RequestMapping(value = "/tryLogin", method = RequestMethod.POST)
	public String login(@Validated UserInfo userInfo, BindingResult bindingResult) {
		boolean loginOrNot = userInfoService.userCheck(userInfo.getAccount(), userInfo.getPassword());
		if (loginOrNot) {
			if (bindingResult.hasErrors()) {
				 LOGGER.info(userInfo.getAccount() + " - Failed login because of validation limit!");
				 return "login";
			 }
			LOGGER.info(userInfo.getAccount() + " - Login Successfully");
			return "redirect:/resultController.do";
			// login success
		} else {
			LOGGER.info(userInfo.getAccount() + " - Failed login");
			// wrong password and account
			 if (bindingResult.hasErrors()) {
				 LOGGER.info(userInfo.getAccount() + " - Failed login because of validation limit!");
				 return "login";
			 }
			 LOGGER.info(userInfo.getAccount() + " - Failed login because of wrong account or password!");
			 return "login";
		}
	}

}
