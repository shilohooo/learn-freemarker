package ${classpath};

import javax.persistence.Table;
import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import lombok.Data;

/**
 * @author shiloh
 * @date ${.now?string("yyyy/MM/dd HH:mm")}
 */
@Data
@Table(name = "${tableName}")
@org.hibernate.annotations.Table(appliesTo = "${tableName}", comment = "${tableComment}")
public class ${className} {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "${id}", columnDefinition = "bigint(20) comment '自增主键'")
    private Long ${id};

    @Column(name = "${username}", columnDefinition = "${usernameColType}(${usernameColLength}) comment '${usernameComment}'")
    private String ${username};

    @Column(name = "${password}", columnDefinition = "${passwordColType}(${passwordColLength}) comment '${passwordComment}'")
    private String ${password};
}