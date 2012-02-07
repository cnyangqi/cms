package com.dps.cms.controller;

import org.nutz.ioc.loader.annotation.Inject;

import com.dps.cms.dao.BasicDao;

public class BaseAction {

	@Inject
	protected BasicDao basicDao;

	public void setBasicDao(BasicDao basicDao) {
		this.basicDao = basicDao;
	}
}
