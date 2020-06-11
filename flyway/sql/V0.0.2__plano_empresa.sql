create table tb_plano (
    cd_plano int primary key auto_increment not null,
    nm_plano varchar(32) not null,
    fl_ativo ENUM('S', 'N') not null,
    dt_inclusao datetime not null
);

create table tb_empresa_plano (
    cd_empresa int not null,
    cd_plano int not null,
    vl_plano double(10, 2) not null,
    fl_ativo ENUM('S', 'N') not null,
    dt_inclusao datetime not null,
    constraint pk_empresa_plano primary key (cd_empresa, cd_plano),
    constraint fk_empl_empresa foreign key (cd_empresa) references tb_empresa (cd_empresa),
    constraint fk_empl_plano foreign key (cd_plano) references tb_plano (cd_plano)
);
