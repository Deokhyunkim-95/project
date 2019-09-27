package service;

import java.util.List;

import vo.FoodshopVO;

public interface FoodShopService {
	int addFoodshop(FoodshopVO vo);
	int discountsearch(FoodshopVO vo);
	public int locsearch(FoodshopVO vo);
	List<FoodshopVO> showfoodshop(String fname);
	
}
