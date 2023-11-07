create table if not exists rtou.users
(
    userid varchar(20) primary key,
    sso    varchar(10) not null
);

create table if not exists rtou.attention
(
    id     bigint auto_increment primary key,
    userid varchar(20) not null,
    date   varchar(8)  not null
);

create table if not exists rtou.characterinfo
(
    name      varchar(15) primary key,
    voicename varchar(20) not null,
    pitch     double      not null
);

create table if not exists rtou.conversations
(
    id            bigint auto_increment primary key,
    userid        varchar(20)  not null,
    audiofilelink varchar(100) not null,
    usersentence  varchar(100) not null,
    index idx_conversations (userid)
);

create table if not exists rtou.conversationcharacter
(
    userid        varchar(20) primary key,
    charactername varchar(15) not null
);

create table if not exists rtou.estimations
(
    id            bigint auto_increment primary key,
    userid        varchar(20)  not null,
    sentence      varchar(100) not null,
    accuracy      double       not null,
    pronunciation double       not null,
    fluency       double       not null,
    completeness  double       not null,
    index idx_estimation (userid)
);

create table if not exists rtou.errorwords
(
    id        bigint auto_increment primary key,
    userid    varchar(20)  not null,
    sentence  varchar(100) not null,
    errorword varchar(100) not null,
    errortype varchar(15)  not null,
    index idx_errors (userid, sentence)
);

