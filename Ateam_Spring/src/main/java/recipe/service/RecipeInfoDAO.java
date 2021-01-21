package recipe.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import recipe.dto.RecipeInfoDTO;

//@Repository 어노테이션 필요
@Repository
public class RecipeInfoDAO implements RecipeInfoInterface {
	@Autowired @Qualifier("recipe") private SqlSession sql;
	
	@Override
	public List<RecipeInfoDTO> recipeInfo() {	
		 List<RecipeInfoDTO> list =
					 sql.selectList("recipe.mapper.recipeInfo");
//		}
		 return list;
	}//recipeInfo()
}
