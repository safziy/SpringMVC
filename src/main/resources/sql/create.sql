CREATE TABLE `user` (
  `id` int(11) NOT NULL COMMENT 'user唯一ID',
  `name` varchar(30) NOT NULL COMMENT 'user用户名',
  `pwd` varchar(64) NOT NULL COMMENT 'user密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
