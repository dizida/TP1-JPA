package monprojet.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import monprojet.entity.Country;

// This will be AUTO IMPLEMENTED by Spring 
//

public interface CountryRepository extends JpaRepository<Country, Integer> {

    @Query( value = " SELECT sum(population) as population "
            + " FROM CITY city "
            + " WHERE country_id = :id " ,
            nativeQuery = true) //indique que la requête est native
    public int popPays(Integer id);

    @Query( value = " SELECT name as nom,sum(population) as pop "
            + " FROM CITY city "
            + " WHERE country_id = :id "
            + " Group By name ",
            nativeQuery = true)
    public List<PopulationParPays> NomPopulationPays();
    
}
