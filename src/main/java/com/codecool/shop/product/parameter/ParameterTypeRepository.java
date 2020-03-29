package com.codecool.shop.product.parameter;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
interface ParameterTypeRepository extends JpaRepository<ParameterType, Integer> {

}