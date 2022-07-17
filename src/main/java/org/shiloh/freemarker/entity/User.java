package org.shiloh.freemarker.entity;

import lombok.Data;

import javax.persistence.*;

/**
 * @author shiloh
 * @date 2022/07/17 15:46
 */
@Data
@Table(name = "sys_user")
@org.hibernate.annotations.Table(appliesTo = "sys_user", comment = "系统用户信息表")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", columnDefinition = "bigint(20) comment '自增主键'")
    private Long id;

    @Column(name = "username", columnDefinition = "varchar(50) comment '用户名'")
    private String username;

    @Column(name = "password", columnDefinition = "varchar(255) comment '密码'")
    private String password;
}