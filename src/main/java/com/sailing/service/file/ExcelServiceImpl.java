package com.sailing.service.file;

import com.sailing.dao.ExcelMapper;
import com.sailing.entity.Excel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ExcelServiceImpl implements ExcelService {
	@Autowired
	ExcelMapper excelMapper;

	@Override
	public void deleteById(Integer id) {
		excelMapper.deleteById(id);
	}

	@Override
	public void insert(Excel record) {
		excelMapper.insert(record);
	}

	@Override
	public void insertSelective(Excel record) {
		excelMapper.insertSelective(record);
	}

	@Override
	public Excel selectById(Integer id) {
		return excelMapper.selectById(id);
	}

	@Override
	public void updateByIdSelective(Excel record) {
		excelMapper.updateByIdSelective(record);
	}

	@Override
	public void updateById(Excel record) {
		excelMapper.updateById(record);
	}
}
