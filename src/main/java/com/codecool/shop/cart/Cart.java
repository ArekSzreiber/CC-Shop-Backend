package com.codecool.shop.cart;

import com.codecool.shop.product.Product;
import lombok.Data;
import org.springframework.stereotype.Component;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import java.util.List;

@Data
@Component
@Entity
@Table(schema = "public")
public class Cart {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column
    @NotEmpty
    private String name;


    @OneToMany(fetch = FetchType.LAZY)
    @JoinColumn(name = "category_id", referencedColumnName = "id")
    private List<Product> products;

    public boolean hasNoProduct() {
        return products.isEmpty();
    }

    public int getProductsNo() {
        return products.size();
    }

    public List<Product> getProducts() {
        return products;
    }
}