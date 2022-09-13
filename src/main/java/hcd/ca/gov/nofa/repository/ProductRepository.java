/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package hcd.ca.gov.nofa.repository;

import hcd.ca.gov.nofa.entities.Product;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author santo
 */
public interface ProductRepository extends JpaRepository<Product, Integer> {
 
}