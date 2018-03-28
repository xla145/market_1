package com.gxuwz.Market.business.entity;

/**
 * SysUser entity. @author MyEclipse Persistence Tools
 */

public class SysUser implements java.io.Serializable {

	// Fields

	private Integer id;
	private String userId;
	private String userName;
	private String userRealName;
	private Integer userSex;
	private Integer userAge;
	private String userPassword;
	private String userImg;
	private Integer userType;
	private String userAddress;
	private String userTelephone;
	private String userEmail;
	private String userWeixin;
	private String userWeibo;
	private String userQq;
	private String userPerId;
	private Integer userPerType;
	private String qqid;
	private String weiboid;
	private String weixinid;
	private String merchantId;
	private String sign;
	private String tourProductProvince;
	private String tourProductCity;
	private String tourProductCounty;
	private String tourProductTown;

	// Constructors

	/** default constructor */
	public SysUser() {
	}

	/** minimal constructor */
	public SysUser(String userId, String userName) {
		this.userId = userId;
		this.userName = userName;
	}

	/** full constructor */
	public SysUser(String userId, String userName, String userRealName,
			Integer userSex, Integer userAge, String userPassword,
			String userImg, Integer userType, String userAddress,
			String userTelephone, String userEmail, String userWeixin,
			String userWeibo, String userQq, String userPerId,
			Integer userPerType, String qqid, String weiboid, String weixinid,
			String merchantId, String sign) {
		this.userId = userId;
		this.userName = userName;
		this.userRealName = userRealName;
		this.userSex = userSex;
		this.userAge = userAge;
		this.userPassword = userPassword;
		this.userImg = userImg;
		this.userType = userType;
		this.userAddress = userAddress;
		this.userTelephone = userTelephone;
		this.userEmail = userEmail;
		this.userWeixin = userWeixin;
		this.userWeibo = userWeibo;
		this.userQq = userQq;
		this.userPerId = userPerId;
		this.userPerType = userPerType;
		this.qqid = qqid;
		this.weiboid = weiboid;
		this.weixinid = weixinid;
		this.merchantId = merchantId;
		this.sign = sign;
	}

	public SysUser(Integer id, String userId, String userName,
			String userRealName, Integer userSex, Integer userAge,
			String userPassword, String userImg, Integer userType,
			String userAddress, String userTelephone, String userEmail,
			String userWeixin, String userWeibo, String userQq,
			String userPerId, Integer userPerType, String qqid, String weiboid,
			String weixinid, String merchantId, String sign,
			String tourProductProvince, String tourProductCity,
			String tourProductCounty, String tourProductTown) {
		super();
		this.id = id;
		this.userId = userId;
		this.userName = userName;
		this.userRealName = userRealName;
		this.userSex = userSex;
		this.userAge = userAge;
		this.userPassword = userPassword;
		this.userImg = userImg;
		this.userType = userType;
		this.userAddress = userAddress;
		this.userTelephone = userTelephone;
		this.userEmail = userEmail;
		this.userWeixin = userWeixin;
		this.userWeibo = userWeibo;
		this.userQq = userQq;
		this.userPerId = userPerId;
		this.userPerType = userPerType;
		this.qqid = qqid;
		this.weiboid = weiboid;
		this.weixinid = weixinid;
		this.merchantId = merchantId;
		this.sign = sign;
		this.tourProductProvince = tourProductProvince;
		this.tourProductCity = tourProductCity;
		this.tourProductCounty = tourProductCounty;
		this.tourProductTown = tourProductTown;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUserId() {
		return this.userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserRealName() {
		return this.userRealName;
	}

	public void setUserRealName(String userRealName) {
		this.userRealName = userRealName;
	}

	public Integer getUserSex() {
		return this.userSex;
	}

	public void setUserSex(Integer userSex) {
		this.userSex = userSex;
	}

	public Integer getUserAge() {
		return this.userAge;
	}

	public void setUserAge(Integer userAge) {
		this.userAge = userAge;
	}

	public String getUserPassword() {
		return this.userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserImg() {
		return this.userImg;
	}

	public void setUserImg(String userImg) {
		this.userImg = userImg;
	}

	public Integer getUserType() {
		return this.userType;
	}

	public void setUserType(Integer userType) {
		this.userType = userType;
	}

	public String getUserAddress() {
		return this.userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getUserTelephone() {
		return this.userTelephone;
	}

	public void setUserTelephone(String userTelephone) {
		this.userTelephone = userTelephone;
	}

	public String getUserEmail() {
		return this.userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserWeixin() {
		return this.userWeixin;
	}

	public void setUserWeixin(String userWeixin) {
		this.userWeixin = userWeixin;
	}

	public String getUserWeibo() {
		return this.userWeibo;
	}

	public void setUserWeibo(String userWeibo) {
		this.userWeibo = userWeibo;
	}

	public String getUserQq() {
		return this.userQq;
	}

	public void setUserQq(String userQq) {
		this.userQq = userQq;
	}

	public String getUserPerId() {
		return this.userPerId;
	}

	public void setUserPerId(String userPerId) {
		this.userPerId = userPerId;
	}

	public Integer getUserPerType() {
		return this.userPerType;
	}

	public void setUserPerType(Integer userPerType) {
		this.userPerType = userPerType;
	}

	public String getQqid() {
		return this.qqid;
	}

	public void setQqid(String qqid) {
		this.qqid = qqid;
	}

	public String getWeiboid() {
		return this.weiboid;
	}

	public void setWeiboid(String weiboid) {
		this.weiboid = weiboid;
	}

	public String getWeixinid() {
		return this.weixinid;
	}

	public void setWeixinid(String weixinid) {
		this.weixinid = weixinid;
	}

	public String getMerchantId() {
		return this.merchantId;
	}

	public void setMerchantId(String merchantId) {
		this.merchantId = merchantId;
	}

	public String getSign() {
		return this.sign;
	}

	public void setSign(String sign) {
		this.sign = sign;
	}

	public String getTourProductProvince() {
		return tourProductProvince;
	}

	public void setTourProductProvince(String tourProductProvince) {
		this.tourProductProvince = tourProductProvince;
	}

	public String getTourProductCity() {
		return tourProductCity;
	}

	public void setTourProductCity(String tourProductCity) {
		this.tourProductCity = tourProductCity;
	}

	public String getTourProductCounty() {
		return tourProductCounty;
	}

	public void setTourProductCounty(String tourProductCounty) {
		this.tourProductCounty = tourProductCounty;
	}

	public String getTourProductTown() {
		return tourProductTown;
	}

	public void setTourProductTown(String tourProductTown) {
		this.tourProductTown = tourProductTown;
	}

}