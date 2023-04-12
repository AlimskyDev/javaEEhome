package g111.spring.Models;

import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Item {
    private Long id;

    private String name;

    private String description;

    private double price;
}
