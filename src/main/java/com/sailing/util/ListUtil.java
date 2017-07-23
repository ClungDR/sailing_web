package com.sailing.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public class ListUtil {
	public static List<Integer> getListFromJSON(String source) {
		source=source.replaceAll("\\[|\\]", "");
		if (source.length() == 0)
			return null;
		String[] strings = source.split(",");
		ArrayList<Integer> list = new ArrayList<>();
		for (String string : strings) {
			list.add(Integer.valueOf(string));
		}
		return list;
	}
}
