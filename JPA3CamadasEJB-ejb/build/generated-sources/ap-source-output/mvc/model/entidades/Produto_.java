package mvc.model.entidades;

import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import mvc.model.entidades.Venda;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-08-15T12:23:45")
@StaticMetamodel(Produto.class)
public class Produto_ { 

    public static volatile SingularAttribute<Produto, String> nome;
    public static volatile SingularAttribute<Produto, Integer> id;
    public static volatile CollectionAttribute<Produto, Venda> vendaCollection;

}