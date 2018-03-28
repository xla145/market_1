package com.gxuwz.Market.business.entity;

import java.sql.Timestamp;

/**
 * CasCase entity. @author MyEclipse Persistence Tools
 */

public class CasCase implements java.io.Serializable {

	// Fields

	private Integer id;
	private String patientCode;
	private Timestamp visitime;
	private String pulse;
	private String tongueQuality;
	private String fur;
	private String tongue;
	private String sixChannel;
	private String face;
	private String cough;
	private String excrement;
	private String pee;
	private String coldHot;
	private String sweat;
	private String headBody;
	private String diet;
	private String thirsty;
	private String ear;
	private String earOil;
	private String menstruation;
	private String liverFunction;
	private String renalFunction;
	private String bloodRoutine;

	// Constructors

	/** default constructor */
	public CasCase() {
	}

	/** minimal constructor */
	public CasCase(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public CasCase(Integer id, String patientCode, Timestamp visitime, String pulse, String tongueQuality, String fur,
			String tongue, String sixChannel, String face, String cough, String excrement, String pee, String coldHot,
			String sweat, String headBody, String diet, String thirsty, String ear, String earOil, String menstruation,
			String liverFunction, String renalFunction, String bloodRoutine) {
		this.id = id;
		this.patientCode = patientCode;
		this.visitime = visitime;
		this.pulse = pulse;
		this.tongueQuality = tongueQuality;
		this.fur = fur;
		this.tongue = tongue;
		this.sixChannel = sixChannel;
		this.face = face;
		this.cough = cough;
		this.excrement = excrement;
		this.pee = pee;
		this.coldHot = coldHot;
		this.sweat = sweat;
		this.headBody = headBody;
		this.diet = diet;
		this.thirsty = thirsty;
		this.ear = ear;
		this.earOil = earOil;
		this.menstruation = menstruation;
		this.liverFunction = liverFunction;
		this.renalFunction = renalFunction;
		this.bloodRoutine = bloodRoutine;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getPatientCode() {
		return this.patientCode;
	}

	public void setPatientCode(String patientCode) {
		this.patientCode = patientCode;
	}

	public Timestamp getVisitime() {
		return this.visitime;
	}

	public void setVisitime(Timestamp visitime) {
		this.visitime = visitime;
	}

	public String getPulse() {
		return this.pulse;
	}

	public void setPulse(String pulse) {
		this.pulse = pulse;
	}

	public String getTongueQuality() {
		return this.tongueQuality;
	}

	public void setTongueQuality(String tongueQuality) {
		this.tongueQuality = tongueQuality;
	}

	public String getFur() {
		return this.fur;
	}

	public void setFur(String fur) {
		this.fur = fur;
	}

	public String getTongue() {
		return this.tongue;
	}

	public void setTongue(String tongue) {
		this.tongue = tongue;
	}

	public String getSixChannel() {
		return this.sixChannel;
	}

	public void setSixChannel(String sixChannel) {
		this.sixChannel = sixChannel;
	}

	public String getFace() {
		return this.face;
	}

	public void setFace(String face) {
		this.face = face;
	}

	public String getCough() {
		return this.cough;
	}

	public void setCough(String cough) {
		this.cough = cough;
	}

	public String getExcrement() {
		return this.excrement;
	}

	public void setExcrement(String excrement) {
		this.excrement = excrement;
	}

	public String getPee() {
		return this.pee;
	}

	public void setPee(String pee) {
		this.pee = pee;
	}

	public String getColdHot() {
		return this.coldHot;
	}

	public void setColdHot(String coldHot) {
		this.coldHot = coldHot;
	}

	public String getSweat() {
		return this.sweat;
	}

	public void setSweat(String sweat) {
		this.sweat = sweat;
	}

	public String getHeadBody() {
		return this.headBody;
	}

	public void setHeadBody(String headBody) {
		this.headBody = headBody;
	}

	public String getDiet() {
		return this.diet;
	}

	public void setDiet(String diet) {
		this.diet = diet;
	}

	public String getThirsty() {
		return this.thirsty;
	}

	public void setThirsty(String thirsty) {
		this.thirsty = thirsty;
	}

	public String getEar() {
		return this.ear;
	}

	public void setEar(String ear) {
		this.ear = ear;
	}

	public String getEarOil() {
		return this.earOil;
	}

	public void setEarOil(String earOil) {
		this.earOil = earOil;
	}

	public String getMenstruation() {
		return this.menstruation;
	}

	public void setMenstruation(String menstruation) {
		this.menstruation = menstruation;
	}

	public String getLiverFunction() {
		return this.liverFunction;
	}

	public void setLiverFunction(String liverFunction) {
		this.liverFunction = liverFunction;
	}

	public String getRenalFunction() {
		return this.renalFunction;
	}

	public void setRenalFunction(String renalFunction) {
		this.renalFunction = renalFunction;
	}

	public String getBloodRoutine() {
		return this.bloodRoutine;
	}

	public void setBloodRoutine(String bloodRoutine) {
		this.bloodRoutine = bloodRoutine;
	}

}