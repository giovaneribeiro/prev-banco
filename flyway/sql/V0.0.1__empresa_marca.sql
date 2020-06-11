create table tb_marca (
    cd_marca int primary key auto_increment not null,
    nm_marca varchar(32) not null,
    fl_ativo ENUM('S', 'N') not null,
    dt_inclusao datetime not null
);

create table tb_empresa (
    cd_empresa int primary key auto_increment not null,
    cd_marca int not null,
    nm_razao_social varchar(255) not null,
    nr_cnpj varchar(18) unique not null,
    fl_ativo ENUM('S', 'N') not null,
    dt_inclusao datetime not null,
    constraint fk_empresa_marca foreign key (cd_marca) references tb_marca (cd_marca)
);
