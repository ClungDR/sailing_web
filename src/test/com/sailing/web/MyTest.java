package com.sailing.web;

import com.sailing.util.ListUtil;
import jdk.nashorn.internal.runtime.linker.JavaAdapterFactory;
import net.sf.json.JSON;
import net.sf.json.JSONArray;
import net.sf.json.util.JSONUtils;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.crypto.hash.Sha1Hash;
import org.apache.shiro.crypto.hash.Sha256Hash;
import org.apache.struts2.json.JSONException;
import org.apache.struts2.json.JSONUtil;
import org.junit.Test;
import org.springframework.test.annotation.SystemProfileValueSource;

import java.io.File;
import java.util.*;
import java.util.concurrent.ConcurrentHashMap;

public class MyTest {


	@Test
	public void testVideoDoration(){
	}
	@Test
    public void traverseFolderTest(){
        File file=new File("");

    }
    @Test
    public void jsonTest() throws JSONException {
        List<Integer> nums=new ArrayList<>();
        nums.add(1);
        nums.add(2);
        nums.add(1);
        nums.add(3);
        nums.add(1);
        nums.add(2);
        nums.add(14);
        nums.add(22);
        nums.add(1);
        nums.add(23);
        nums.add(1);
        nums.add(2);
        nums.add(1);
        nums.add(2);
    }

	public static void main(String[] args) throws JSONException {
       String str="[]";
//       str=str.replaceAll("\\[|\\]","");
//        System.out.println(str.length());

        List<Integer> list=ListUtil.getListFromJSON(str);

        System.out.println(list);
	}
}
