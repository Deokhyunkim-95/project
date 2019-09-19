package service;

import dao.FoodshopDao;
import vo.FoodshopVO;

public class FoodShopServiceimpl implements FoodShopService {
	
	FoodshopDao dao;
	
	public FoodShopServiceimpl() {}


	public FoodShopServiceimpl(FoodshopDao dao) {
		this.dao = dao;
	}
	
	
	public FoodshopDao getDao() {
		return dao;
	}


	public void setDao(FoodshopDao dao) {
		this.dao = dao;
	}


	@Override
	public int addFoodshop(FoodshopVO vo) {
		// TODO Auto-generated method stub
		System.out.println("FoodShopServiceimpl  addFoodshop");
		return dao.insertFoodshop(vo);
	}

	@Override
	public int discountsearch(FoodshopVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int locsearch(FoodshopVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

}
