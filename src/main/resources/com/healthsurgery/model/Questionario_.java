package com.healthsurgery.model;

import java.sql.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="Dali", date="2016-10-18T23:25:28.667-0200")
@StaticMetamodel(Questionario.class)
public class Questionario_ {
	public static volatile SingularAttribute<Questionario, Integer> idQuestionario;
	public static volatile SingularAttribute<Questionario, Integer> idPaciente;
	public static volatile SingularAttribute<Questionario, Integer> idMedico;
	public static volatile SingularAttribute<Questionario, Date> dataQuestionario;
}
