package mvc.model.entidades;

import java.math.BigDecimal;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import mvc.model.entidades.Produto;
import mvc.model.entidades.Vendedor;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-08-15T12:23:45")
@StaticMetamodel(Venda.class)
public class Venda_ { 

    public static volatile SingularAttribute<Venda, Vendedor> vendedor;
    public static volatile SingularAttribute<Venda, Produto> produto;
    public static volatile SingularAttribute<Venda, BigDecimal> valorvenda;
    public static volatile SingularAttribute<Venda, Integer> id;

}