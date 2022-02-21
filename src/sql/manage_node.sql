/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : manage_node

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 21/02/2022 22:42:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_article
-- ----------------------------
DROP TABLE IF EXISTS `tb_article`;
CREATE TABLE `tb_article`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `createid` int(0) UNSIGNED NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '内容',
  `status` int(0) UNSIGNED NULL DEFAULT 1 COMMENT '文章状态（1：已发布 2：待发布）',
  `hasmessage` int(0) UNSIGNED NULL DEFAULT 1 COMMENT '是否允许评论（1：允许 0：禁止）',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标题',
  `typeid` int(0) UNSIGNED NULL DEFAULT 1 COMMENT '文章类型',
  `readtimes` int(0) UNSIGNED NULL DEFAULT 0 COMMENT '阅读次数',
  `goodtimes` int(0) UNSIGNED NULL DEFAULT 0 COMMENT '点赞次数',
  `badtimes` int(0) UNSIGNED NULL DEFAULT 0 COMMENT '踩次数',
  `importance` int(0) UNSIGNED NULL DEFAULT 1 COMMENT '重要等级（1：普通）',
  `languageid` int(0) UNSIGNED NULL DEFAULT 1 COMMENT '语言类型',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `createid`(`createid`) USING BTREE,
  INDEX `languageid`(`languageid`) USING BTREE,
  INDEX `typeid`(`typeid`) USING BTREE,
  CONSTRAINT `tb_article_ibfk_1` FOREIGN KEY (`createid`) REFERENCES `tb_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_article_ibfk_2` FOREIGN KEY (`languageid`) REFERENCES `tb_language` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_article_ibfk_3` FOREIGN KEY (`typeid`) REFERENCES `tb_article_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_article
-- ----------------------------
INSERT INTO `tb_article` VALUES (3, '2022-01-02 10:40:27', 1, '<p>百度为您找到相关结果约169,000个</p><h3><a href=\"https://www.baidu.com/link?url=QHsYPdWjboJt9ub5VVSvwsf8Ifep_RBXgoBzIC0f7hvk5T2dxw2nHWeIAK3ptd0K5lnpXG352KHGtNrM0tWbWa&amp;wd=&amp;eqid=8e66a459000bedbc0000000661d17c7e\" target=\"_blank\">TypeScript:序列化JSON中的<em>BigInt</em>&nbsp;- 我爱学习网</a></h3><p>2020年12月28日&nbsp;不管我对上面的行做了什么,如果我试图打印一个包含<em>BigInt</em>的JSON,我会得到:TypeError:&nbsp;<em>Do</em>&nbsp;<em>not</em>&nbsp;<em>know</em>&nbsp;<em>how</em>&nbsp;<em>to</em>&nbsp;<em>serialize</em>&nbsp;<em>a</em>&nbsp;<em>BigInt</em>。如有任何帮助,我们将不胜感激。...</p><p><a target=\"_blank\" href=\"http://www.baidu.com/link?url=QHsYPdWjboJt9ub5VVSvwsf8Ifep_RBXgoBzIC0f7hvk5T2dxw2nHWeIAK3ptd0K5lnpXG352KHGtNrM0tWbWa\">www.5axxw.com/questions/conten...</a></p><p><i></i></p><p><a href=\"http://cache.baiducontent.com/c?m=-J15qzVYTgzwaJbLy2yGrQhVk_pmnWxTUEbiZWK-zqBBG2EZx_Rznaem72kZGg_qzUp59g1oqBzIdeYz2UyCXSYvNlydc-fN0COl8M3OspINzg1ilJfWiY9BEMQSkP8hhA7-teZXnONkBWIKsjkRQLpQ2WTk93wfHB1JsBQ4Sb2KrxUKo-k-RYPTV23uVj_h&amp;p=9c769a47809f11a05bef9521530ac4&amp;newp=c0769a47c0af59ec08e2977c0c419f231610db2151d7d1176b82c825d7331b001c3bbfb422201600d7ce7a6d05ad4e5ee9f03c763d0923a3dda5c91d9fb4c574799e4b2c33&amp;s=b8af7d0fbf094517&amp;user=baidu&amp;fm=sc&amp;query=Do+not+know+how+to+serialize+a+BigInt&amp;qid=8e66a459000bedbc&amp;p1=1\" target=\"_blank\">百度快照</a></p><h3><a href=\"http://www.baidu.com/link?url=4AXvwgGfJwMg1tLc0Od0wpaTzE2m1dFiGRwr-uPvhnyY99YEOhoFM0Vi1otWzFDnLL8ZSFveVSELiLDzCEGAJSA3PTcGwLW45yPJiYMVfbO\" target=\"_blank\">浅拷贝和深拷贝---JS实现深拷贝的方式_东风吹更白的博客-C...</a></h3><p>2020年11月25日&nbsp;忽略value为function, undefind, symbol, 并且在序列化<em>BigInt</em>时会抛出语法错误:TypeError:&nbsp;<em>Do</em>&nbsp;<em>not</em>&nbsp;<em>know</em>&nbsp;<em>how</em>&nbsp;<em>to</em>&nbsp;<em>serialize</em>&nbsp;<em>a</em>&nbsp;<em>BigInt</em>&nbsp;// 序列化function, undefi...</p><p><a target=\"_blank\" href=\"http://www.baidu.com/link?url=4AXvwgGfJwMg1tLc0Od0wpaTzE2m1dFiGRwr-uPvhnyY99YEOhoFM0Vi1otWzFDnLL8ZSFveVSELiLDzCEGAJSA3PTcGwLW45yPJiYMVfbO\"></a></p><p><a target=\"_blank\" href=\"http://www.baidu.com/link?url=4AXvwgGfJwMg1tLc0Od0wpaTzE2m1dFiGRwr-uPvhnyY99YEOhoFM0Vi1otWzFDnLL8ZSFveVSELiLDzCEGAJSA3PTcGwLW45yPJiYMVfbO\"><img src=\"https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=188955431,3893600750&amp;fm=195&amp;app=88&amp;f=JPEG?w=200&amp;h=200\"/></a></p><p><a target=\"_blank\" href=\"http://www.baidu.com/link?url=4AXvwgGfJwMg1tLc0Od0wpaTzE2m1dFiGRwr-uPvhnyY99YEOhoFM0Vi1otWzFDnLL8ZSFveVSELiLDzCEGAJSA3PTcGwLW45yPJiYMVfbO\">CSDN技术社区</a></p><p><i></i></p><p><a href=\"http://cache.baiducontent.com/c?m=dfmzYlvY1m9OabCH7ZPIB9g-PBD7mNGPD9iii_R0hQTo3T3BniBokKxSNNaiV0d7EFFIyeHSwprnYpb6N19v5rlTRMU-jgx_yf0kbWefZ1KmYFnEOi1C5Ukr1dMVT0J9yG4p-hVJFIc_E3lN8CkmmvMYTjA58hS9b5qArB42TQKeQcaQjY61jEWqLBlt9EewrWBkWS036smKtAzlQ9H1M_&amp;p=c67fd302958412a05abd9b7a0640&amp;newp=882a914e908112a05aa4cc27170092695d0fc20e38ddd501298ffe0cc4241a1a1a3aecbe25241400d8c3766303a84b5feafa32783d0034f1f689df08d2ecce7e69ca&amp;s=182be0c5cdcd5072&amp;user=baidu&amp;fm=sc&amp;query=Do+not+know+how+to+serialize+a+BigInt&amp;qid=8e66a459000bedbc&amp;p1=2\" target=\"_blank\">百度快照</a></p><h3><a href=\"http://www.baidu.com/link?url=_aRxc2SutV-1xsnMJJB31AUydqnQpRN4XkZBziwtkFm_c6-plP7KZpDmHuFBoUPhx3pWzP9iTkOz85JBLfe2j_\" target=\"_blank\"><em>Do</em>&nbsp;<em>not</em>&nbsp;<em>know</em>&nbsp;<em>how</em>&nbsp;<em>to</em>&nbsp;<em>serialize</em>&nbsp;<em>a</em>&nbsp;<em>BigInt</em>&nbsp;· Issue #614 · ...</a></h3><p>查看此网页的中文翻译，请点击&nbsp;<a href=\"http://www.baidu.com/link?url=4SDYfj6rUTD-Q8FuBwsFcDFeZBAF70iPuoj-wWhRB8G7g4sMWM-L5aMo0SvZsVYQ4o2yj6bQQN3xh7PjSY-XeEaQVsQ7cxiCIhgkeB0DtGk2eD9RAMG8lwDomBjZ0UHr4UVYSghr83IxF7ncsqEJdRY3vH31hCt8abGb8c9uB7lVBiOesmgQgvUnsENu1QXSkGT4wkhQM42vsDrKeBzX6_\" target=\"_blank\">翻译此页</a></p><p>Jump&nbsp;<em>to</em>↵ Sign inSign up prisma/studio Notifications Star472 Fork10 Code Issues110 Pull requests Security Insights More New issue Jump&nbsp;<em>to</em>&nbsp;bottom&nbsp;<em>Do</em>&nbsp;<em>not</em>&nbsp;<em>know</em>&nbsp;<em>how</em>&nbsp;<em>t</em>...</p><p><a target=\"_blank\" href=\"http://www.baidu.com/link?url=_aRxc2SutV-1xsnMJJB31AUydqnQpRN4XkZBziwtkFm_c6-plP7KZpDmHuFBoUPhx3pWzP9iTkOz85JBLfe2j_\">github</a></p><p><i></i></p><p><a href=\"http://cache.baiducontent.com/c?m=giWbSZguHPImjyd767X5szti7Ux_T03O_5BexgIX1zWcpOFOoZh-BhZQ9dIAONm72nWIG8pfivRJpo34Vt14YfQ0dMgCnYf608rssKsSycPFq-mdPwrlhhr5RN2I64vNGM1DFWfje2supJlc9RilOrvxV3T57o67BBON1GrIGB7&amp;p=9a3ec64ad4d20ae908e2943747&amp;newp=8b2a9715d9c333e04eaae6395b53d8224216ed6236d5c44324b9d71fd325001c1b69e6b92126140fd5cf786506ad4a5ce0f43c78341766dada9fca458ae7c4&amp;s=cfcd208495d565ef&amp;user=baidu&amp;fm=sc&amp;query=Do+not+know+how+to+serialize+a+BigInt&amp;qid=8e66a459000bedbc&amp;p1=3\" target=\"_blank\">百度快照</a></p><h3><a href=\"http://www.baidu.com/link?url=kzbU9cDczOYlzTpKizqdqT6sXKesLsL4ntnicoF3MORjUGKiGdSlW3IKTqhgKjVF2Iy9T3epuwK7XEMhzBHGEq\" target=\"_blank\">JSON&nbsp;<em>Bigint</em>&nbsp;大数精度丢失的背后 - 云+社区 - 腾讯云</a></h3><p>2019年7月31日&nbsp;作为 ES 标准的制定者,TC39 委员会的大神们搁置了这个问题,而调皮的 Chrome 则在开发者试图 stringify 一个&nbsp;<em>BigInt</em>&nbsp;时,抛出了<em>Do</em>&nbsp;<em>not</em>&nbsp;<em>know</em>&nbsp;<em>how</em>&nbsp;<em>to</em>&nbsp;<em>serialize</em>&nbsp;<em>a</em>&nbsp;<em>B</em>...</p><p><a target=\"_blank\" href=\"http://www.baidu.com/link?url=kzbU9cDczOYlzTpKizqdqT6sXKesLsL4ntnicoF3MORjUGKiGdSlW3IKTqhgKjVF2Iy9T3epuwK7XEMhzBHGEq\">腾讯云计算</a></p><p><i></i></p><p><a href=\"http://cache.baiducontent.com/c?m=2w9d9U4aUnVhfEP88ZDNfhaeRpzYi5fJutej2dUvyGvAeLmf5ByF-NSnwvOucgFYbbEeCon1pYGdCpmULAOT4r6d_D4fMPnLstDtG_les8vnAqGWr7RqLIy-2gt_teORvrapCoTzNcroRkWNPOavENCa_ElUzFbaN_9yJaaC_UqSL_pz7ePESuhizKCmuJKb&amp;p=923b8b0f85cc43b444bd9b7d0c16c4&amp;newp=977ac64ad49a1bf305bd9b7d0c16cf231610db2151d6d31f6b82c825d7331b001c3bbfb422201600d7ce7a6d05ad4e5ee9f03c763d0923a3dda5c91d9fb4c57479d17d682d&amp;s=6ecbdd6ec859d284&amp;user=baidu&amp;fm=sc&amp;query=Do+not+know+how+to+serialize+a+BigInt&amp;qid=8e66a459000bedbc&amp;p1=4\" target=\"_blank\">百度快照</a></p><h3><a href=\"http://www.baidu.com/link?url=7-XygcvZN3MPja8uCQFSrOxbpzlNge-ujmhtszPtmeyzJqTyM32yHJIpTrw7RdWuENdxNO7G7OG6mcpXi-S6zTQr7GNndfKO07YTDRUrxItU-ZWGLn1K_4JgAVpfcG4o\" target=\"_blank\">TypeScript:&nbsp;<em>serialize</em>&nbsp;<em>BigInt</em>&nbsp;in JSON - Stack Overflow</a></h3><p>No matter what I&nbsp;<em>do</em>&nbsp;<em>to</em>&nbsp;the lines above, if I try&nbsp;<em>to</em>&nbsp;print a JSON containing&nbsp;<em>a</em>&nbsp;<em>BigInt</em>, I get:TypeError:&nbsp;<em>Do</em>&nbsp;<em>not</em>&nbsp;<em>know</em>&nbsp;<em>how</em>&nbsp;<em>to</em>&nbsp;<em>serialize</em>&nbsp;<em>a</em>&nbsp;<em>BigInt</em>. Any help is apprecia...</p><p><a target=\"_blank\" href=\"http://www.baidu.com/link?url=7-XygcvZN3MPja8uCQFSrOxbpzlNge-ujmhtszPtmeyzJqTyM32yHJIpTrw7RdWuENdxNO7G7OG6mcpXi-S6zTQr7GNndfKO07YTDRUrxItU-ZWGLn1K_4JgAVpfcG4o\">stackoverflow.com/questions/65...</a></p><p><i></i></p><p><a href=\"http://cache.baiducontent.com/c?m=Hf2JOVRs9B_6dxtYqQAZtRIBMGnEoWiEJ0So0OcVxJsfY60T__CJRqg4uXhenEA8NoT7x2YDaFnAThfL4x484lOjQD2WYsRlCvL0QgIEOFkJNmHN-xbDMH9JnU_V2xZLO74zqhuooa8olSfyZVM-nAfQUrq_f8phdvuE7CtTCkxHkU3KX49Z8L1q7G_ZOyTCvkB5YXhE2q8BHEIn9NTUWIqc00b2fsQAnytHnr2-Fd7&amp;p=c474c015d9c743f00be296281508&amp;newp=973e8e0a86cc45ad05a5c7710f4092695d0fc20e3bdcda01298ffe0cc4241a1a1a3aecbe25241400d8c3766303a84b5feafa32783d0034f1f689df08d2ecce7e72c0&amp;s=35f4a8d465e6e1ed&amp;user=baidu&amp;fm=sc&amp;query=Do+not+know+how+to+serialize+a+BigInt&amp;qid=8e66a459000bedbc&amp;p1=5\" target=\"_blank\">百度快照</a>&nbsp;-&nbsp;<a href=\"http://www.baidu.com/link?url=STp9RN28SsJZpFujbhmdwzphS4p_PZDkGtDOi6m4RRGljaVVdMT9Mk3kcwea24e2F3MW8IM3HSVCHX92jZuzcuabOWbBjVnXiE4Wu3UugfCU0o4qemk81fAMVagoNE1CyK4q44SG0EPmsbZZFcwfwoDc5XyOMBHY7W3U4CfmbiXyIUmcLUWg3xUwlP2pfzR4oZTeToXikVEszCz0T_-1te9IufCy178XoSLyV1nQqpXAiyXNm1RpsRPKcGZv3EyGMj6zvIa4lfVC_Cllo4VnHq\" target=\"_blank\">翻译此页</a></p><p>其他人还在搜</p><p><a href=\"https://www.baidu.com/s?wd=not%20know%E4%BB%80%E4%B9%88%E6%84%8F%E6%80%9D&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=1&amp;ie=utf-8&amp;rsv_pq=8e66a459000bedbc&amp;oq=Do%20not%20know%20how%20to%20serialize%20a%20BigInt&amp;rsv_t=d9c7nWY9xvLV2RLn0W%2B%2FuQFM89LvhcUPZMkdt1TZcx7SgWuCS7eTS1lvF%2FKIHdpL%2Bx0g&amp;rsf=100631202&amp;rsv_dl=0_prs_28608_1\">not know什么意思</a><a href=\"https://www.baidu.com/s?wd=i%20not%20know%E4%BB%80%E4%B9%88%E6%84%8F%E6%80%9D&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=1&amp;ie=utf-8&amp;rsv_pq=8e66a459000bedbc&amp;oq=Do%20not%20know%20how%20to%20serialize%20a%20BigInt&amp;rsv_t=5ed47MwJwxS55vYNzaUJ%2BfoVwsn1NHKvmdSOz%2B9xOCopNq8txnYFJcIR2p7hZWSXqzgP&amp;rsf=100631202&amp;rsv_dl=0_prs_28608_2\">i not know什么意思</a><a href=\"https://www.baidu.com/s?wd=knot&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=1&amp;ie=utf-8&amp;rsv_pq=8e66a459000bedbc&amp;oq=Do%20not%20know%20how%20to%20serialize%20a%20BigInt&amp;rsv_t=5ed47MwJwxS55vYNzaUJ%2BfoVwsn1NHKvmdSOz%2B9xOCopNq8txnYFJcIR2p7hZWSXqzgP&amp;rsf=100631202&amp;rsv_dl=0_prs_28608_3\">knot</a><a href=\"https://www.baidu.com/s?wd=know%E5%92%8Chow&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=1&amp;ie=utf-8&amp;rsv_pq=8e66a459000bedbc&amp;oq=Do%20not%20know%20how%20to%20serialize%20a%20BigInt&amp;rsv_t=5ed47MwJwxS55vYNzaUJ%2BfoVwsn1NHKvmdSOz%2B9xOCopNq8txnYFJcIR2p7hZWSXqzgP&amp;rsf=100631202&amp;rsv_dl=0_prs_28608_4\">know和how</a><a href=\"https://www.baidu.com/s?wd=knowknow%E6%98%AF%E8%B0%81&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=1&amp;ie=utf-8&amp;rsv_pq=8e66a459000bedbc&amp;oq=Do%20not%20know%20how%20to%20serialize%20a%20BigInt&amp;rsv_t=5ed47MwJwxS55vYNzaUJ%2BfoVwsn1NHKvmdSOz%2B9xOCopNq8txnYFJcIR2p7hZWSXqzgP&amp;rsf=100631202&amp;rsv_dl=0_prs_28608_5\">knowknow是谁</a><a href=\"https://www.baidu.com/s?wd=how%20youknow&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=1&amp;ie=utf-8&amp;rsv_pq=8e66a459000bedbc&amp;oq=Do%20not%20know%20how%20to%20serialize%20a%20BigInt&amp;rsv_t=80e1JFtQmumEGVHBKkQqMtEHuSw1dy5ZmxWgBe5%2FKhFJSaW1HqYE145OGFDNZFEJfgR0&amp;rsf=100631202&amp;rsv_dl=0_prs_28608_6\">how youknow</a><a href=\"https://www.baidu.com/s?wd=do%20you%20know%E4%BB%80%E4%B9%88%E6%84%8F%E6%80%9D&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=1&amp;ie=utf-8&amp;rsv_pq=8e66a459000bedbc&amp;oq=Do%20not%20know%20how%20to%20serialize%20a%20BigInt&amp;rsv_t=80e1JFtQmumEGVHBKkQqMtEHuSw1dy5ZmxWgBe5%2FKhFJSaW1HqYE145OGFDNZFEJfgR0&amp;rsf=100631202&amp;rsv_dl=0_prs_28608_7\">do you know什么意思</a><a href=\"https://www.baidu.com/s?wd=you%20know&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=1&amp;ie=utf-8&amp;rsv_pq=8e66a459000bedbc&amp;oq=Do%20not%20know%20how%20to%20serialize%20a%20BigInt&amp;rsv_t=80e1JFtQmumEGVHBKkQqMtEHuSw1dy5ZmxWgBe5%2FKhFJSaW1HqYE145OGFDNZFEJfgR0&amp;rsf=100631202&amp;rsv_dl=0_prs_28608_8\">you know</a><a href=\"https://www.baidu.com/s?wd=well%20known&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=1&amp;ie=utf-8&amp;rsv_pq=8e66a459000bedbc&amp;oq=Do%20not%20know%20how%20to%20serialize%20a%20BigInt&amp;rsv_t=80e1JFtQmumEGVHBKkQqMtEHuSw1dy5ZmxWgBe5%2FKhFJSaW1HqYE145OGFDNZFEJfgR0&amp;rsf=100631202&amp;rsv_dl=0_prs_28608_9\">well known</a><a href=\"https://www.baidu.com/s?wd=Do%20you%20know%20how&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=1&amp;ie=utf-8&amp;rsv_pq=8e66a459000bedbc&amp;oq=Do%20not%20know%20how%20to%20serialize%20a%20BigInt&amp;rsv_t=80e1JFtQmumEGVHBKkQqMtEHuSw1dy5ZmxWgBe5%2FKhFJSaW1HqYE145OGFDNZFEJfgR0&amp;rsf=100631202&amp;rsv_dl=0_prs_28608_10\">Do you know how</a><a href=\"https://www.baidu.com/s?wd=how%20do%20i%20know&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=1&amp;ie=utf-8&amp;rsv_pq=8e66a459000bedbc&amp;oq=Do%20not%20know%20how%20to%20serialize%20a%20BigInt&amp;rsv_t=80e1JFtQmumEGVHBKkQqMtEHuSw1dy5ZmxWgBe5%2FKhFJSaW1HqYE145OGFDNZFEJfgR0&amp;rsf=100631202&amp;rsv_dl=0_prs_28608_11\">how do i know</a><a href=\"https://www.baidu.com/s?wd=do%20you%20know&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=1&amp;ie=utf-8&amp;rsv_pq=8e66a459000bedbc&amp;oq=Do%20not%20know%20how%20to%20serialize%20a%20BigInt&amp;rsv_t=80e1JFtQmumEGVHBKkQqMtEHuSw1dy5ZmxWgBe5%2FKhFJSaW1HqYE145OGFDNZFEJfgR0&amp;rsf=100631202&amp;rsv_dl=0_prs_28608_12\">do you know</a></p><h3><a href=\"http://www.baidu.com/link?url=ISYxXbxy155fLuOTbJgakXRXq1Yg9NLfKWvF_7Tsu3mUSsU4v4yzPpE4tFjr8S7tRpiuXMyIQe6rBaPGxOZQG7_mk5IW2_gDFUo8KmQkD2K\" target=\"_blank\">ES2020(ES11)新特性_等风来0212的博客-CSDN博客_es2020新...</a></h3><p><a href=\"http://www.baidu.com/link?url=ISYxXbxy155fLuOTbJgakXRXq1Yg9NLfKWvF_7Tsu3mUSsU4v4yzPpE4tFjr8S7tRpiuXMyIQe6rBaPGxOZQG7_mk5IW2_gDFUo8KmQkD2K\" target=\"_blank\"><img src=\"https://t9.baidu.com/it/u=2710757382,309848161&amp;fm=218&amp;app=126&amp;f=PNG?w=121&amp;h=75&amp;s=C8231D72199BE0CA5CCCC0CF0300C0B2\"/></a></p><p>2021年2月28日&nbsp;ES2020(ES11)新特性概述九大新特性截图-简介新特性详解String.prototype.matchAll--字符串正则匹配扩展-返回全部结果的迭代器import() --动态导入 / 按需导入<em>BigInt</em>--大整数插入链接...</p><p><a target=\"_blank\" href=\"http://www.baidu.com/link?url=ISYxXbxy155fLuOTbJgakXRXq1Yg9NLfKWvF_7Tsu3mUSsU4v4yzPpE4tFjr8S7tRpiuXMyIQe6rBaPGxOZQG7_mk5IW2_gDFUo8KmQkD2K\"></a></p><p><a target=\"_blank\" href=\"http://www.baidu.com/link?url=ISYxXbxy155fLuOTbJgakXRXq1Yg9NLfKWvF_7Tsu3mUSsU4v4yzPpE4tFjr8S7tRpiuXMyIQe6rBaPGxOZQG7_mk5IW2_gDFUo8KmQkD2K\"><img src=\"https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=188955431,3893600750&amp;fm=195&amp;app=88&amp;f=JPEG?w=200&amp;h=200\"/></a></p><p><a target=\"_blank\" href=\"http://www.baidu.com/link?url=ISYxXbxy155fLuOTbJgakXRXq1Yg9NLfKWvF_7Tsu3mUSsU4v4yzPpE4tFjr8S7tRpiuXMyIQe6rBaPGxOZQG7_mk5IW2_gDFUo8KmQkD2K\">CSDN技术社区</a>&nbsp; 修改写数据</p><p><a href=\"http://cache.baiducontent.com/c?m=mGqqt5ewrKFaSiD3ZLMPau760gkLA4xI0394U9iHxgcya17L3j-E-Rapyo-wnOexOckL5ii90Dx7JX6c5fWf9BvQEoy8br-MxRkwg-1YU4wAJqkMrMnoXgY54usjaVvm8OKk0IbY-EIMctk2gkBmbv61kGWPQgoqnUjSIjgyi84UhagyHoSNMRi22Ij12ezt7GdlndrKvxFgkf_y0z1lr_&amp;p=8a769a4790d809f808e29074564c&amp;newp=8a70de0385cc43b108e290744e5192695d0fc20e38d5d401298ffe0cc4241a1a1a3aecbe25241400d8c3766303a84b5feafa32783d0034f1f689df08d2ecce7e31&amp;s=b6d767d2f8ed5d21&amp;user=baidu&amp;fm=sc&amp;query=Do+not+know+how+to+serialize+a+BigInt&amp;qid=8e66a459000bedbc&amp;p1=7\" target=\"_blank\">百度快照</a></p><h3><a href=\"http://www.baidu.com/link?url=Yjsa3ZTQ01Au3D5B2kgnGfJkTmvDA6Okrj2Qxztu0RekMrduoUZHpg17KIo8puF3bfn0wr_eoP4VzDxssYuISMur2sxdUfa2UHHhbj8ckSLx-Fd5d3BFxRlSbfH-vzSHi4kb-se2diqOigufnfywA_\" target=\"_blank\"><em>do not know how to serialize a bigint</em>的中文翻译 - 百度翻译</a></h3>', 1, 1, 'Do not know how to serialize a BigInt', 6, 0, 0, 0, 1, 1);
INSERT INTO `tb_article` VALUES (5, '2022-01-02 11:03:52', 1, '<p>ES2020（ES11）新特性<br/>概述<br/>九大新特性截图-简介<br/>新特性详解<br/>1.String.prototype.matchAll ：字符串正则匹配扩展-返回全部结果的迭代器<br/>2.import() ：动态导入 / 按需导入<br/>3.BigInt ：大整数<br/>使用方法<br/>注意点<br/>4.Promise.allSettled ：完成所有的promise，不会被reject中断<br/>5.globalThis：统一全局对象名称<br/>6.for-in mechanics：标准化 for-in 输出顺序<br/>7.Optional Chaining：可选链运算符 / 链式短路符(?)<br/>注意点<br/>8.Nullish coalescing Operator ：空值合并运算符<br/>9.import.meta ：模块元信息<br/>参考资料<br/>概述<br/>本文主要介绍ES2020新增特性<br/>JS新特性即 TC39 经一系列提案审核发布后的特性。<br/>ES6（2015年）之后的新特性github地址：<br/>https://github.com/tc39/proposals/blob/master/finished-proposals.md<br/><br/>九大新特性截图-简介<br/><br/><br/>String.prototype.matchAll：字符串正则匹配扩展-返回全部结果的迭代器<br/>import() ：动态导入 / 按需导入<br/>BigInt ：大整数<br/>Promise.allSettled ：完成所有的promise，不会被reject中断<br/>globalThis ：统一全局对象名称<br/>for-in mechanics ：标准化 for-in 输出顺序<br/>Optional Chaining ：可选链运算符 / 链式短路符<br/>Nullish coalescing Operator ：空值合并运算符<br/>import.meta ：模块元信息<br/>新特性详解<br/>1.String.prototype.matchAll ：字符串正则匹配扩展-返回全部结果的迭代器<br/></p>', 1, 1, 'ES2020（ES11）新特性', 6, 0, 0, 0, 1, 1);
INSERT INTO `tb_article` VALUES (6, '2022-01-05 11:25:49', 1, '<p><a href=\"http://tuijian.hao123.com/\">hao123推荐</a><a href=\"http://www.people.com.cn/\">人民网</a><a href=\"http://www.xinhuanet.com/\">新华网</a><a href=\"http://www.cctv.com/\">央视网</a><a href=\"http://www.cri.cn/\">国际在线</a><a href=\"http://cn.chinadaily.com.cn/\">中国日报</a><a href=\"http://www.china.com.cn/\">中国网</a><a href=\"http://www.ce.cn/\">中经网</a><a href=\"http://www.gmw.cn/\">光明网</a><a href=\"http://www.cnr.cn/\">央广网</a><a href=\"http://www.qstheory.cn/\">求是网</a><a href=\"http://www.youth.cn/\">中青网</a><a href=\"http://www.cac.gov.cn/\">网信网</a><a href=\"http://www.chengdu.gov.cn/\">成都市政府</a></p><p><a href=\"http://code.51.com/jh/xb1/i5/b66uzy1.html?_s_from=port_3_h123tlf25&amp;inum=pv2xb1i5pv2&amp;_g=h123tlf25&amp;game_id=606\"><img src=\"https://dgss2.bdstatic.com/5bVYsj_p_tVS5dKfpU_Y_D3/data/552440d38f3471c456adbc87098d4e92\"/></a><a href=\"http://code.51.com/jh/xb2/i5/uk355.html?_s_from=port_3_h123tlf26&amp;inum=pv2xb2i5pv2&amp;_g=h123tlf26&amp;game_id=606\"><img src=\"https://dgss0.bdstatic.com/5bVSsj_p_tVS5dKfpU_Y_D3/data/9f2b8a4c65b2e0b490d084011dbe27cf\"/></a><a href=\"http://code.51.com/jh/xb3/i4/2af65.html?_s_from=port_3_h123tlf27&amp;inum=pv2xb3i4pv2&amp;_g=h123tlf27&amp;game_id=606\"><img src=\"https://dgss2.bdstatic.com/5bVYsj_p_tVS5dKfpU_Y_D3/data/c207155ed93ff817ab24def830baa79c\"/></a><a href=\"http://code.51.com/jh/g73d202107/i13/45dg4u.html?_s_from=port_3_h123tlz6&amp;inum=pv2hj6i13pv2&amp;_g=h123tlz6&amp;game_id=606\"><img src=\"https://dgss1.bdstatic.com/5bVXsj_p_tVS5dKfpU_Y_D3/data/d72e52425473694dd89e3d4bc1018516\"/></a><a href=\"http://code.51.com/jh/xb7/i2/p54hr4.html?_s_from=port_3_h123tlf28&amp;inum=pv2xb7i2pv2&amp;_g=h123tlf28&amp;game_id=606\"><img src=\"https://dgss3.bdstatic.com/5bVZsj_p_tVS5dKfpU_Y_D3/data/b4638b17dbc746ada1d54405edac2e96\"/></a><a href=\"http://code.51.com/jh/xb4/i4/gi6x1q6.html?_s_from=port_3_h123tlf29&amp;inum=pv2xb4i4pv2&amp;_g=h123tlf29&amp;game_id=606\"><img src=\"https://dgss0.bdstatic.com/5bVWsj_p_tVS5dKfpU_Y_D3/data/a63099ec8affc15958b16e14812386c6\"/></a><a href=\"http://code.51.com/jh/xb5/i4/xvq5y44.html?_s_from=port_3_h123tlf30&amp;inum=pv2xb5i4pv2&amp;_g=h123tlf30&amp;game_id=606\"><img src=\"https://dgss1.bdstatic.com/5bVXsj_p_tVS5dKfpU_Y_D3/data/39edcc8e894b5a164650ed584165022d\"/></a><img src=\"https://dgss0.bdstatic.com/5bVWsj_p_tVS5dKfpU_Y_D3/res/r/image/2018-01-09/94e5c536a8c5ae843659856e2f1d6393.png\"/><img src=\"https://dgss0.bdstatic.com/5bVWsj_p_tVS5dKfpU_Y_D3/res/r/image/2018-01-09/e2925adbe0359d59a8149bf141679df5.png\"/></p><ul><li><p><a href=\"http://www.baidu.com/?tn=sitehao123_15\">百度</a></p></li><li><p><a href=\"http://www.sina.com.cn/\">新浪</a>•<a href=\"https://weibo.com/\">微博</a></p></li><li><p><a href=\"http://www.sohu.com/\">搜狐</a>•<a href=\"http://tuijian.hao123.com/\">热点</a></p></li><li><p><a href=\"http://www.qq.com/\">腾讯</a></p></li><li><p><a href=\"http://www.163.com/\">网易</a></p></li><li><p><a href=\"http://map.baidu.com/\">百度地图</a></p></li><li><p><a href=\"https://game.hao123.com/?idfrom=4086\">游戏</a>•<a href=\"http://wan.baidu.com/home?idfrom=4087\">精品</a></p></li><li><p><a href=\"http://tuijian.hao123.com/?type=rec\">hao123头条</a></p></li><li><p><a href=\"http://v.hao123.baidu.com/\">hao123影视</a></p></li><li><p><a href=\"https://s.click.taobao.com/tlJ95ku\">爱淘宝</a><a href=\"https://s.click.taobao.com/0rydudu\">&nbsp;<i>直营好物</i></a></p></li><li><p><a href=\"https://union-click.jd.com/jdc?d=iEZf6v\">京东</a></p></li><li><p><a href=\"https://s.click.taobao.com/D3lYvpu\">天猫国际</a></p></li><li><p><a href=\"https://www.kuaishou.com/?utm_source=bb&amp;utm_medium=01&amp;utm_campaign=MIXED_HAO123_DC_XXL_CPT&amp;location=01_mingzhan_2_7\">快手</a></p></li><li><p><a href=\"http://www.ctrip.com/?allianceid=1630&amp;sid=1911&amp;ouid=000401app-&amp;utm_medium=&amp;utm_campaign=&amp;utm_source=&amp;isctrip=\">携程旅行网</a></p></li><li><p><a href=\"https://www.ifeng.com/\">凤凰网</a></p></li><li><p><a href=\"https://www.taobao.com/\">淘宝网</a></p></li><li><p><a href=\"https://haokan.baidu.com/\">好看视频</a></p></li><li><p><a href=\"http://www.iqiyi.com/\">爱奇艺</a>•<a href=\"http://v.hao123.baidu.com/dianshi\">电视剧</a></p></li><li><p><a href=\"https://mos.m.taobao.com/union/jhsjx2020?pid=mm_43125636_4246598_109944300468\">聚划算</a></p></li><li><p><a href=\"http://tejia.hao123.com/\">今日特价</a><a href=\"https://s.click.taobao.com/N8clqdu\">&nbsp;<i>年度热销</i></a></p></li><li><p><a href=\"http://www.eastmoney.com/\">东方财富</a></p></li><li><p><a href=\"https://www.zhihu.com/explore\">知乎</a></p></li><li><p><a href=\"http://www.cnki.net/\">知网</a></p></li><li><p><a href=\"https://www.12306.cn/\">12306</a></p></li><li><p><a href=\"https://www.ximalaya.com/\">喜马拉雅FM</a></p></li><li><p><a href=\"https://www.chsi.com.cn/\">学信网</a></p></li><li><p><a href=\"https://www.baidu.com/s?word=%E5%BD%A9%E7%A5%A8&amp;tn=50000230_hao_pg&amp;ie=utf-8\">彩票</a>•<a href=\"https://www.baidu.com/s?word=%E5%A4%A7%E4%B9%90%E9%80%8F%E8%B5%B0%E5%8A%BF%E5%9B%BE&amp;tn=50000231_hao_pg&amp;ie=utf-8\">走势图</a></p></li></ul><ul><li><p><a href=\"http://jump.luna.58.com/s?spm=b-31580022738699-me-f-862&amp;ch=mingzhan\">58同城</a></p></li><li><p><a href=\"https://t.vip.com/jtt10oKLjb9\">唯品会</a></p></li><li><p><a href=\"http://baiduzm.37.com/?uid=3339810\">37游戏</a></p></li><li><p><a href=\"https://u.jd.com/YISTgkr\">京东数码</a></p></li><li><p><a href=\"https://www.anjuke.com/?pi=navi-hao123-mz\">安居客房产</a></p></li><li><p><a href=\"http://www.9377.com/?lm=baidu_kuzhan04\">9377游戏</a></p></li><li><p><a href=\"http://xueshu.baidu.com/\">百度学术</a></p></li><li><p><a href=\"https://wenku.baidu.com/\">百度文库</a></p></li><li><p><a href=\"https://www.icourse163.org/\">中国大学MOOC</a></p></li><li><p><a href=\"https://music.163.com/\">网易云音乐</a></p></li><li><p><a href=\"http://www.cpta.com.cn/\">人事考试网</a></p></li><li><p><a href=\"http://www.icbc.com.cn/icbc/\">工商银行</a><i></i></p></li><li><p><a href=\"http://focus.tianya.cn/\">天涯社区</a></p></li><li><p><a href=\"http://code.51.com/jh/g73d202107/i1/3p5ta5w.html?_s_from=port_3_h123xmz1&amp;inum=pv2hj6i1pv2&amp;_g=h123xmz1&amp;game_id=606\">51游戏</a></p></li><li><p><a href=\"https://www.douban.com/\">豆瓣网</a></p></li><li><p><a href=\"http://www.huya.com/\">虎牙直播</a></p></li><li><p><a href=\"https://mail.qq.com/\">QQ邮箱</a><i></i></p></li><li><p><a href=\"https://www.hupu.com/\">虎扑体育</a></p></li></ul><p><a href=\"javascript:void(0);\">点击展开<i></i></a></p><ul><li><a href=\"http://bdtg.37.com/s/1/1590/112937.html?uid=3372690\" target=\"_blank\"><i></i></a></li><li><a href=\"http://baiduzm.37.com/?uid=3372691\" target=\"_blank\"><i></i></a></li><li><a href=\"http://bdtg.37.com/s/1/1590/112938.html?uid=3372692\" target=\"_blank\"><i></i></a></li></ul><p><img src=\"https://dgss0.bdstatic.com/5bVWsj_p_tVS5dKfpU_Y_D3/res/r/image/2018-01-09/94e5c536a8c5ae843659856e2f1d6393.png\"/><img src=\"https://dgss0.bdstatic.com/5bVWsj_p_tVS5dKfpU_Y_D3/res/r/image/2018-01-09/e2925adbe0359d59a8149bf141679df5.png\"/></p><p><a href=\"https://top.baidu.com/board?tab=movie&amp;sa=fyb_movie_hao123\" target=\"_blank\">电影</a><a href=\"https://www.hao123.com/api/gettop/?t0=1&amp;p0=0&amp;page=indexnew\">电视剧</a><a href=\"https://www.hao123.com/api/gettop/?t0=2&amp;p0=0&amp;page=indexnew\">综艺</a><a href=\"https://www.hao123.com/api/gettop/?t0=3&amp;p0=0&amp;page=indexnew\">小说</a><g><path></path></g></p><p><a href=\"https://www.baidu.com/s?wd=%E9%95%BF%E6%B4%A5%E6%B9%96+%E7%94%B5%E5%BD%B1&amp;sa=fyb_hp_movie_hao123&amp;rsv_dl=fyb_hp_movie_hao123&amp;from=hao123\" target=\"_blank\"></a></p><p><a href=\"https://www.baidu.com/s?wd=%E9%95%BF%E6%B4%A5%E6%B9%96+%E7%94%B5%E5%BD%B1&amp;sa=fyb_hp_movie_hao123&amp;rsv_dl=fyb_hp_movie_hao123&amp;from=hao123\" target=\"_blank\">1</a></p><p><a href=\"https://www.baidu.com/s?wd=%E9%95%BF%E6%B4%A5%E6%B9%96+%E7%94%B5%E5%BD%B1&amp;sa=fyb_hp_movie_hao123&amp;rsv_dl=fyb_hp_movie_hao123&amp;from=hao123\" target=\"_blank\"><img src=\"https://fyb-1.cdn.bcebos.com/fyb-1/20220103/39c8293a81cb596690bc19bc1fb4e224\"/></a></p><p>长津湖</p><p>热搜指数&nbsp;:&nbsp;336399<path></path></p><p>作者&nbsp;:&nbsp;中国大陆</p><p>类型&nbsp;:&nbsp;全部</p><p><a href=\"https://www.baidu.com/s?wd=%E9%95%BF%E6%B4%A5%E6%B9%96+%E7%94%B5%E5%BD%B1&amp;sa=fyb_hp_movie_hao123&amp;rsv_dl=fyb_hp_movie_hao123&amp;from=hao123\" target=\"_blank\"><path></path></a><a href=\"https://www.baidu.com/s?wd=%E5%8F%8D%E8%B4%AA%E9%A3%8E%E6%9A%B45%EF%BC%9A%E6%9C%80%E7%BB%88%E7%AB%A0+%E7%94%B5%E5%BD%B1&amp;sa=fyb_hp_movie_hao123&amp;rsv_dl=fyb_hp_movie_hao123&amp;from=hao123\" target=\"_blank\"><img src=\"https://fyb-1.cdn.bcebos.com/fyb-1/20220103/547610b144176fdec403dc559f67a2d5\"/></a></p><p><path></path></p><p>2</p><p>反贪风暴5：最终章</p><p><a href=\"https://www.baidu.com/s?wd=%E5%8F%8D%E8%B4%AA%E9%A3%8E%E6%9A%B45%EF%BC%9A%E6%9C%80%E7%BB%88%E7%AB%A0+%E7%94%B5%E5%BD%B1&amp;sa=fyb_hp_movie_hao123&amp;rsv_dl=fyb_hp_movie_hao123&amp;from=hao123\" target=\"_blank\">92470<path></path></a><a href=\"https://www.baidu.com/s?wd=%E8%AF%AF%E6%9D%802+%E7%94%B5%E5%BD%B1&amp;sa=fyb_hp_movie_hao123&amp;rsv_dl=fyb_hp_movie_hao123&amp;from=hao123\" target=\"_blank\"><img src=\"https://fyb-1.cdn.bcebos.com/fyb-1/20220103/d32f007916b15a7017099b83e4213eb2\"/></a></p><p><path></path></p><p>3</p><p>误杀2</p><p><a href=\"https://www.baidu.com/s?wd=%E8%AF%AF%E6%9D%802+%E7%94%B5%E5%BD%B1&amp;sa=fyb_hp_movie_hao123&amp;rsv_dl=fyb_hp_movie_hao123&amp;from=hao123\" target=\"_blank\">85003<path></path></a><a href=\"https://www.baidu.com/s?wd=%E4%BD%A0%E5%A5%BD%E6%9D%8E%E7%84%95%E8%8B%B1+%E7%94%B5%E5%BD%B1&amp;sa=fyb_hp_movie_hao123&amp;rsv_dl=fyb_hp_movie_hao123&amp;from=hao123\" target=\"_blank\"><img src=\"https://fyb-1.cdn.bcebos.com/fyb-1/20220103/dd66c566066886928f01618b6de727a6\"/></a></p><p><path></path></p><p>4</p><p>你好李焕英</p><p><a href=\"https://www.baidu.com/s?wd=%E4%BD%A0%E5%A5%BD%E6%9D%8E%E7%84%95%E8%8B%B1+%E7%94%B5%E5%BD%B1&amp;sa=fyb_hp_movie_hao123&amp;rsv_dl=fyb_hp_movie_hao123&amp;from=hao123\" target=\"_blank\">81150<path></path></a><a href=\"https://www.baidu.com/s?wd=%E6%82%AC%E5%B4%96%E4%B9%8B%E4%B8%8A+%E7%94%B5%E5%BD%B1&amp;sa=fyb_hp_movie_hao123&amp;rsv_dl=fyb_hp_movie_hao123&amp;from=hao123\" target=\"_blank\"><img src=\"https://fyb-1.cdn.bcebos.com/fyb-1/20220103/3b3f75b5e03ce4ebb47aba64b865b326\"/></a></p><p><path></path></p><p>5</p><p>悬崖之上</p><p><a href=\"https://www.baidu.com/s?wd=%E6%82%AC%E5%B4%96%E4%B9%8B%E4%B8%8A+%E7%94%B5%E5%BD%B1&amp;sa=fyb_hp_movie_hao123&amp;rsv_dl=fyb_hp_movie_hao123&amp;from=hao123\" target=\"_blank\">29520<path></path></a><a href=\"https://www.baidu.com/s?wd=%E9%97%A8%E9%94%81+%E7%94%B5%E5%BD%B1&amp;sa=fyb_hp_movie_hao123&amp;rsv_dl=fyb_hp_movie_hao123&amp;from=hao123\" target=\"_blank\"><img src=\"https://fyb-1.cdn.bcebos.com/fyb-1/20220103/0cc2ab3403119c2f7676ad6c7ffa14d4\"/></a></p><p><path></path></p><p>6</p><p>门锁</p><p><a href=\"https://www.baidu.com/s?wd=%E9%97%A8%E9%94%81+%E7%94%B5%E5%BD%B1&amp;sa=fyb_hp_movie_hao123&amp;rsv_dl=fyb_hp_movie_hao123&amp;from=hao123\" target=\"_blank\">27142<path></path></a><a href=\"https://www.baidu.com/s?wd=%E5%8F%8D%E8%B4%AA%E9%A3%8E%E6%9A%B4+%E7%94%B5%E5%BD%B1&amp;sa=fyb_hp_movie_hao123&amp;rsv_dl=fyb_hp_movie_hao123&amp;from=hao123\" target=\"_blank\"><img src=\"https://fyb-1.cdn.bcebos.com/fyb-1/20220103/0ec1eff517d8ecf2cd72521a8e54c277\"/></a></p><p><path></path></p><p>7</p><p>反贪风暴</p><p><a href=\"https://www.baidu.com/s?wd=%E5%8F%8D%E8%B4%AA%E9%A3%8E%E6%9A%B4+%E7%94%B5%E5%BD%B1&amp;sa=fyb_hp_movie_hao123&amp;rsv_dl=fyb_hp_movie_hao123&amp;from=hao123\" target=\"_blank\">21961<path></path></a><a href=\"https://www.baidu.com/s?wd=%E9%9B%84%E7%8B%AE%E5%B0%91%E5%B9%B4+%E7%94%B5%E5%BD%B1&amp;sa=fyb_hp_movie_hao123&amp;rsv_dl=fyb_hp_movie_hao123&amp;from=hao123\" target=\"_blank\"><img src=\"https://fyb-1.cdn.bcebos.com/fyb-1/20220103/c3448bd5b153d48002887f5160484b91\"/></a></p><p><path></path></p><p>8</p><p>雄狮少年</p><p><a href=\"https://www.baidu.com/s?wd=%E9%9B%84%E7%8B%AE%E5%B0%91%E5%B9%B4+%E7%94%B5%E5%BD%B1&amp;sa=fyb_hp_movie_hao123&amp;rsv_dl=fyb_hp_movie_hao123&amp;from=hao123\" target=\"_blank\">20955<path></path></a><a href=\"https://www.baidu.com/s?wd=%E8%9C%98%E8%9B%9B%E4%BE%A0%3A%E8%8B%B1%E9%9B%84%E5%BD%92%E6%9D%A5+%E7%94%B5%E5%BD%B1&amp;sa=fyb_hp_movie_hao123&amp;rsv_dl=fyb_hp_movie_hao123&amp;from=hao123\" target=\"_blank\"><img src=\"https://fyb-1.cdn.bcebos.com/fyb-1/20220103/428626c564f5595de815a454cb8d218d\"/></a></p><p><path></path></p><p>9</p><p>蜘蛛侠:英雄归来</p><p><a href=\"https://www.baidu.com/s?wd=%E8%9C%98%E8%9B%9B%E4%BE%A0%3A%E8%8B%B1%E9%9B%84%E5%BD%92%E6%9D%A5+%E7%94%B5%E5%BD%B1&amp;sa=fyb_hp_movie_hao123&amp;rsv_dl=fyb_hp_movie_hao123&amp;from=hao123\" target=\"_blank\">16937<path></path></a><a href=\"https://www.baidu.com/s?wd=%E8%9C%98%E8%9B%9B%E4%BE%A0%3A%E5%B9%B3%E8%A1%8C%E5%AE%87%E5%AE%99+%E7%94%B5%E5%BD%B1&amp;sa=fyb_hp_movie_hao123&amp;rsv_dl=fyb_hp_movie_hao123&amp;from=hao123\" target=\"_blank\"><img src=\"https://fyb-1.cdn.bcebos.com/fyb-1/20220103/3f98e451927a0615589d8cd96cc86daa\"/></a></p><p><path></path></p><p>10</p><p>蜘蛛侠:平行宇宙</p><p><a href=\"https://www.baidu.com/s?wd=%E8%9C%98%E8%9B%9B%E4%BE%A0%3A%E5%B9%B3%E8%A1%8C%E5%AE%87%E5%AE%99+%E7%94%B5%E5%BD%B1&amp;sa=fyb_hp_movie_hao123&amp;rsv_dl=fyb_hp_movie_hao123&amp;from=hao123\" target=\"_blank\">16322<path></path></a><a href=\"https://www.hao123.com/api/gettop/?t0=0&amp;p0=1&amp;page=indexnew\">换一换<path></path></a></p><p><a href=\"http://tuijian.hao123.com/\">头条</a><a href=\"https://www.hao123.com/api/gettop/?t0=1&amp;page=indexnew\">社会</a><a href=\"https://www.hao123.com/api/gettop/?t0=2&amp;page=indexnew\">文娱</a><a href=\"https://www.hao123.com/api/gettop/?t0=3&amp;page=indexnew\">生活</a><a href=\"https://www.hao123.com/api/gettop/?t0=4&amp;page=indexnew\">运动</a></p><ul><li><a href=\"https://mid.hao123.com/mid?from=&amp;key=9529254853049209953&amp;type=society\"><img src=\"https://dss2.bdstatic.com/5bVYsj_p_tVS5dKfpU_Y_D3/res/r/image/2021-12-29/33.jpg\"/>韩国军方：朝鲜向东部海域发射不明发射体</a></li></ul><p><a href=\"http://www.baidu.com/s?word=%E5%8D%81%E4%B9%9D%E5%B1%8A%E5%85%AD%E4%B8%AD%E5%85%A8%E4%BC%9A%E5%86%B3%E8%AE%AE%E4%B8%AD%E7%9A%8410%E4%B8%AA%E6%98%8E%E7%A1%AE&amp;tn=50000202_hao_pg&amp;ie=utf-8&amp;rsv_dl=fyb_n_hao123pc\">十九届六中全会决议中的10个明确</a><a href=\"http://www.baidu.com/s?word=%E5%85%AC%E4%BA%A4%E6%92%9E%E7%BF%BB%E5%A4%96%E5%8D%96%E5%91%98%E9%80%83%E9%80%B8%20%E5%8F%B8%E6%9C%BA%E5%B7%B2%E5%81%9C%E8%81%8C&amp;tn=50000202_hao_pg&amp;ie=utf-8&amp;rsv_dl=fyb_n_hao123pc\">公交撞翻外卖员逃逸 司机已停职</a><a href=\"http://www.baidu.com/s?word=5%E4%B8%AA%E6%A0%B8%E6%AD%A6%E5%99%A8%E5%9B%BD%E5%AE%B6%E9%A2%86%E5%AF%BC%E4%BA%BA%E5%8F%91%E5%B8%83%E8%81%94%E5%90%88%E5%A3%B0%E6%98%8E&amp;tn=50000202_hao_pg&amp;ie=utf-8&amp;rsv_dl=fyb_n_hao123pc\">5个核武器国家领导人发布联合声明</a><a href=\"http://www.baidu.com/s?word=%E5%9B%9B%E5%B7%9D%E6%B1%9F%E6%B2%B98%E6%AD%BB19%E4%BC%A4%E8%BD%A6%E7%A5%B8%E4%BA%8B%E6%95%85%E5%8E%9F%E5%9B%A0%E6%9F%A5%E6%98%8E&amp;tn=50000202_hao_pg&amp;ie=utf-8&amp;rsv_dl=fyb_n_hao123pc\">四川江油8死19伤车祸事故原因查明</a><a href=\"http://www.baidu.com/s?word=%E6%81%92%E5%A4%A7%E5%9B%9E%E5%BA%94%E6%B5%B7%E8%8A%B1%E5%B2%9B39%E6%A0%8B%E6%A5%BC%E8%A2%AB%E8%B4%A3%E4%BB%A4%E6%8B%86%E9%99%A4&amp;tn=50000202_hao_pg&amp;ie=utf-8&amp;rsv_dl=fyb_n_hao123pc\">恒大回应海花岛39栋楼被责令拆除</a><a href=\"http://www.baidu.com/s?word=%E7%94%B7%E5%AD%90%E7%96%91%E5%9B%A0%E5%AE%B6%E5%BA%AD%E7%BA%A0%E7%BA%B7%E5%BC%80%E8%BD%A6%E6%92%9E%E5%90%91%E5%A6%BB%E5%AD%90%E5%B2%B3%E6%AF%8D&amp;tn=50000202_hao_pg&amp;ie=utf-8&amp;rsv_dl=fyb_n_hao123pc\">男子疑因家庭纠纷开车撞向妻子岳母</a><a href=\"http://www.baidu.com/s?word=%E8%A5%BF%E5%AE%89%E9%9B%81%E5%A1%94%E5%8C%BA%E5%9B%9E%E5%BA%94%E5%B0%B1%E5%8C%BB%E9%9A%BE%E5%90%83%E8%8F%9C%E9%9A%BE&amp;tn=50000202_hao_pg&amp;ie=utf-8&amp;rsv_dl=fyb_n_hao123pc\">西安雁塔区回应就医难吃菜难</a></p><h3>视频</h3><ul><li><a href=\"https://haokan.baidu.com/v?vid=10829466913403738024&amp;fr=hao123-op\"><img src=\"https://dgss0.bdstatic.com/5bVSsj_p_tVS5dKfpU_Y_D3/data/b94195b26028984e341294ecc85992f2\"/>邱泽许玮甯闪婚后首度甜蜜同框 同回爱巢</a></li></ul><p><i></i><a href=\"https://haokan.baidu.com/v?vid=4190805908103543011&amp;fr=hao123-op\">杨幂出席粉丝见面会耍大牌，嫌弃道...</a></p><p><i></i><a href=\"https://haokan.baidu.com/v?vid=10183864074298703864&amp;fr=hao123-op\">54岁王祖贤罕见露面，女神颜值依...</a></p><p><i></i><a href=\"https://haokan.baidu.com/v?vid=4319163616462006137&amp;fr=hao123-op\">陈亚男痛哭回应与榜一大哥同游7天...</a></p><p><i></i><a href=\"https://haokan.baidu.com/v?vid=5156863105013577030&amp;fr=hao123-op\">黎明这是怎么了？多次为劣迹艺人站...</a></p><p><i></i><a href=\"https://haokan.baidu.com/v?vid=14215638761433202791&amp;fr=hao123-op\">大衣嫂前任丈夫事业有成，为何选穷...</a></p><p><i></i><a href=\"https://haokan.baidu.com/v?vid=2153567890370902807&amp;fr=hao123-op\">张庭公司涉传销后众明星引追责质疑...</a></p><h3>搜索热点</h3><p><a href=\"javascript:void(0);\" target=\"_self\">换一换</a></p><ul><li><a href=\"https://www.baidu.com/s?tn=50000201_hao_pg&amp;ie=utf-8&amp;word=%E4%B9%A0%E8%BF%91%E5%B9%B3%E5%8F%91%E8%A1%A82022%E5%B9%B4%E6%96%B0%E5%B9%B4%E8%B4%BA%E8%AF%8D&amp;rsv_dl=fyb_n_hao123pc\">1习近平发表2022年新年贺词499万</a></li><li><a href=\"https://www.baidu.com/s?tn=50000201_hao_pg&amp;ie=utf-8&amp;word=%E8%A5%BF%E5%AE%89%3A%E7%A4%BE%E4%BC%9A%E9%9D%A2%E5%9F%BA%E6%9C%AC%E5%AE%9E%E7%8E%B0%E6%B8%85%E9%9B%B6&amp;rsv_dl=fyb_n_hao123pc\">2西安:社会面基本实现清零488万</a></li><li><a href=\"https://www.baidu.com/s?tn=50000201_hao_pg&amp;ie=utf-8&amp;word=%E7%A8%B3%E4%BD%8F%E5%86%9C%E4%B8%9A%E5%9F%BA%E6%9C%AC%E7%9B%98%E5%81%9A%E5%A5%BD%E4%B8%89%E5%86%9C%E5%B7%A5%E4%BD%9C&amp;rsv_dl=fyb_n_hao123pc\">3稳住农业基本盘做好三农工作474万</a></li><li><a href=\"https://www.baidu.com/s?tn=50000201_hao_pg&amp;ie=utf-8&amp;word=%E8%A5%BF%E5%AE%89%E8%A6%81%E6%B1%82%E5%AF%B9%E5%AD%95%E4%BA%A7%E5%A6%87%E7%AD%89%E5%BC%80%E9%80%9A%E7%BB%BF%E8%89%B2%E9%80%9A%E9%81%93&amp;rsv_dl=fyb_n_hao123pc\">4西安要求对孕产妇等开通绿色通道468万</a></li><li><a href=\"https://www.baidu.com/s?tn=50000201_hao_pg&amp;ie=utf-8&amp;word=%E7%AB%8B%E9%99%B6%E5%AE%9B%E6%80%BB%E7%BB%9F%E8%AE%A4%E9%94%99%20%E5%A4%96%E4%BA%A4%E9%83%A8%E5%9B%9E%E5%BA%94&amp;rsv_dl=fyb_n_hao123pc\">5立陶宛总统认错 外交部回应451万</a></li><li><a href=\"https://www.baidu.com/s?tn=50000201_hao_pg&amp;ie=utf-8&amp;word=%E5%AE%89%E5%BE%BD%E6%98%8E%E7%A1%AE%E5%86%8D%E5%A9%9A%E5%AE%B6%E5%BA%AD%E5%8F%AF%E5%86%8D%E7%94%9F%E8%82%B2%E4%B8%89%E4%B8%AA%E5%AD%90%E5%A5%B3&amp;rsv_dl=fyb_n_hao123pc\">6安徽明确再婚家庭可再生育三个子女442万</a></li><li><a href=\"https://www.baidu.com/s?tn=50000201_hao_pg&amp;ie=utf-8&amp;word=%E5%BF%97%E6%84%BF%E8%80%85%E8%B4%A3%E7%BD%9A%E7%BF%BB%E5%A2%99%E7%94%B7%E5%AD%90%E5%BC%95%E4%BA%89%E8%AE%AE%E5%90%8E%E9%81%93%E6%AD%89&amp;rsv_dl=fyb_n_hao123pc\">7志愿者责罚翻墙男子引争议后道歉439万</a></li><li><a href=\"https://www.baidu.com/s?tn=50000201_hao_pg&amp;ie=utf-8&amp;word=5%E6%A0%B8%E5%9B%BD%E5%8F%91%E5%A3%B0%E6%A0%B8%E6%88%98%E4%BA%89%E6%89%93%E4%B8%8D%E5%BE%97%20%E6%84%8F%E5%91%B3%E7%9D%80%E4%BB%80%E4%B9%88&amp;rsv_dl=fyb_n_hao123pc\">85核国发声核战争打不得 意味着什么420万</a></li><li><a href=\"https://www.baidu.com/s?tn=50000201_hao_pg&amp;ie=utf-8&amp;word=%E8%A5%BF%E5%AE%89%E9%99%A2%E6%96%B9%E5%9B%9E%E5%BA%94%E5%AD%95%E5%A6%87%E7%AD%892%E5%B0%8F%E6%97%B6%E5%90%8E%E6%B5%81%E4%BA%A7&amp;rsv_dl=fyb_n_hao123pc\">9西安院方回应孕妇等2小时后流产414万</a></li><li><a href=\"https://www.baidu.com/s?tn=50000201_hao_pg&amp;ie=utf-8&amp;word=%E4%BE%A0%E5%AE%A2%E5%B2%9B%3A%E7%96%AB%E6%83%85%E6%9C%9F%E9%97%B4%E5%A6%82%E4%BD%95%E6%95%91%E6%B2%BB%E5%AD%95%E4%BA%A7%E5%A6%87%EF%BC%9F&amp;rsv_dl=fyb_n_hao123pc\">10侠客岛:疫情期间如何救治孕产妇？403万</a></li></ul><p><a href=\"https://www.baidu.com/s?wd=%E6%93%8D%E5%9C%BA%E5%9F%8B%E5%B0%B8%E6%A1%88%E8%B5%B7%E8%AF%8924%E4%BA%BA%E5%9D%87%E8%A2%AB%E5%88%A4%E5%88%91&amp;tn=50000237_hao_pg\"><img src=\"https://dss2.bdstatic.com/5bVYsj_p_tVS5dKfpU_Y_D3/res/r/image/2021-12-29/29.jpg\"/></a></p><h3><p><a href=\"javascript:;\">推荐</a></p><p><a href=\"javascript:;\">视频</a></p><p><a href=\"javascript:;\">娱乐</a></p><p><a href=\"javascript:;\">游戏</a></p><p><a href=\"javascript:;\">体育</a></p><p><a href=\"javascript:;\">小视频</a></p><p><a href=\"javascript:;\">汽车</a></p><p><a href=\"javascript:;\">科技</a></p><p><a href=\"javascript:;\">财经</a></p><p><a href=\"javascript:;\">女性</a></p><p><a href=\"javascript:;\">历史</a></p><p><a href=\"javascript:;\">时尚</a></p></h3><ul><li><a href=\"http://baijiahao.baidu.com/s?id=1721048809176446897\">第一观察丨5年5次考察冬奥会筹办工作，总书记为何念兹在兹</a><a href=\"http://baijiahao.baidu.com/s?id=1721035195017378170\">我眼中的习近平｜来自中国的启示</a></li><li><h3><a href=\"https://mid.hao123.com/mid?from=&amp;key=8786912013854098954&amp;type=rec\" target=\"_blank\">评论：中国准备好了，让我们一起向未来</a></h3><p><a href=\"https://mid.hao123.com/mid?from=&amp;key=8786912013854098954&amp;type=rec\" target=\"_blank\">距离北京冬奥会开幕还有一个月，各项筹备工作进入决战决胜最后阶段。国家主席习近平在二〇二二年新年贺词中宣告：“世界期待中国，中国做好了准备。”这是中国向世界发出的盛情邀约，也是中国兑...<img src=\"https://dgss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=421481132,162454931&amp;fm=30&amp;app=106&amp;f=JPEG?w=312&amp;h=208&amp;s=5CBE07D5DE306A964DB059410300C0F0\"/></a></p><p><a href=\"http://baijiahao.baidu.com/\">新华网客户端</a>&nbsp;&nbsp;20小时前更新</p></li><li><h3><a href=\"https://mid.hao123.com/mid?from=&amp;key=9707871835585936047&amp;type=rec\" target=\"_blank\">“农民工”正式改名，“新名字”已确定，今后可别叫错了</a></h3><p><a href=\"https://mid.hao123.com/mid?from=&amp;key=9707871835585936047&amp;type=rec\" target=\"_blank\">如果提到改革开放以来我们所取得的经济成就的话，那么每个人都可以滔滔不绝地向自己的同伴讲述。但是很多人在为他人介绍我国改革开放所取得的伟大成就的时候，却忽略了一个重要的群体，那就是农...<img src=\"https://dgss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=1898064217,161976103&amp;fm=30&amp;app=106&amp;f=JPEG?w=312&amp;h=208&amp;s=D18847B15E9B7ACE30344C410300C0FA\"/></a></p><p><a href=\"http://baijiahao.baidu.com/\">春阳财经</a>&nbsp;&nbsp;3天前更新</p></li><li></li></ul>', 1, 1, '电影列表', 6, 0, 0, 0, 1, 1);

-- ----------------------------
-- Table structure for tb_article_message
-- ----------------------------
DROP TABLE IF EXISTS `tb_article_message`;
CREATE TABLE `tb_article_message`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `artid` int(0) UNSIGNED NULL DEFAULT NULL COMMENT '文章id\r\n',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `createid` int(0) UNSIGNED NULL DEFAULT NULL,
  `pid` int(0) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `artid`(`artid`) USING BTREE,
  INDEX `createid`(`createid`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE,
  CONSTRAINT `tb_article_message_ibfk_1` FOREIGN KEY (`artid`) REFERENCES `tb_article` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_article_message_ibfk_2` FOREIGN KEY (`createid`) REFERENCES `tb_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `tb_article_message_ibfk_3` FOREIGN KEY (`pid`) REFERENCES `tb_article_message` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE = InnoDB AUTO_INCREMENT = 79 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_article_message
-- ----------------------------
INSERT INTO `tb_article_message` VALUES (77, '2022-01-02 11:32:08', 3, '给你个评论', 1, NULL);
INSERT INTO `tb_article_message` VALUES (78, '2022-01-02 11:32:15', 3, '回复你一下', 1, 77);
INSERT INTO `tb_article_message` VALUES (79, '2022-01-02 11:32:24', 3, '你好呀', 1, NULL);

-- ----------------------------
-- Table structure for tb_article_type
-- ----------------------------
DROP TABLE IF EXISTS `tb_article_type`;
CREATE TABLE `tb_article_type`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `createid` int(0) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_article_type
-- ----------------------------
INSERT INTO `tb_article_type` VALUES (1, '2021-12-27 17:04:18', '学习资料', NULL);
INSERT INTO `tb_article_type` VALUES (2, '2021-12-27 17:04:34', '视频资料', NULL);
INSERT INTO `tb_article_type` VALUES (3, '2021-12-27 17:04:50', '会议资料', NULL);
INSERT INTO `tb_article_type` VALUES (4, '2021-12-27 17:04:55', '活动资料', NULL);
INSERT INTO `tb_article_type` VALUES (5, '2021-12-27 17:05:28', '入职资料', NULL);
INSERT INTO `tb_article_type` VALUES (6, '2021-12-27 17:05:51', '其他', NULL);

-- ----------------------------
-- Table structure for tb_common_config
-- ----------------------------
DROP TABLE IF EXISTS `tb_common_config`;
CREATE TABLE `tb_common_config`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `createid` int(0) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_common_config
-- ----------------------------
INSERT INTO `tb_common_config` VALUES (1, 'password', '79010e2bba4fcfb1b2bc150b8f17e030', '2021-12-27 17:25:08', NULL);
INSERT INTO `tb_common_config` VALUES (2, 'logintimes', '5', '2021-12-27 17:25:08', NULL);

-- ----------------------------
-- Table structure for tb_language
-- ----------------------------
DROP TABLE IF EXISTS `tb_language`;
CREATE TABLE `tb_language`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `createid` int(0) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `name`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_language
-- ----------------------------
INSERT INTO `tb_language` VALUES (1, '2021-12-27 17:04:18', '华语', NULL);
INSERT INTO `tb_language` VALUES (2, '2021-12-27 17:04:34', '美国', NULL);
INSERT INTO `tb_language` VALUES (3, '2021-12-27 17:04:50', '欧洲', NULL);
INSERT INTO `tb_language` VALUES (4, '2021-12-27 17:04:55', '日本', NULL);
INSERT INTO `tb_language` VALUES (5, '2021-12-27 17:05:28', '韩国', NULL);
INSERT INTO `tb_language` VALUES (6, '2021-12-27 17:05:42', '泰国', NULL);
INSERT INTO `tb_language` VALUES (7, '2021-12-27 17:05:45', '印度', NULL);
INSERT INTO `tb_language` VALUES (8, '2021-12-27 17:05:51', '其他', NULL);

-- ----------------------------
-- Table structure for tb_login_log
-- ----------------------------
DROP TABLE IF EXISTS `tb_login_log`;
CREATE TABLE `tb_login_log`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `account` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `loginip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `loginstate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_login_log
-- ----------------------------
INSERT INTO `tb_login_log` VALUES (1, 'admin', '2022-01-07 09:50:30', '::1', '登录成功');
INSERT INTO `tb_login_log` VALUES (2, 'admin', '2022-01-07 09:57:39', '127.0.0.1', '登录成功');
INSERT INTO `tb_login_log` VALUES (3, 'admin', '2022-01-07 10:03:19', '127.0.0.1', '登录成功');
INSERT INTO `tb_login_log` VALUES (4, 'admin', '2022-01-07 10:31:46', 'localhost', '密码输入错误');
INSERT INTO `tb_login_log` VALUES (5, 'admin', '2022-01-07 10:31:47', 'localhost', '密码输入错误');
INSERT INTO `tb_login_log` VALUES (6, 'admin', '2022-01-07 10:31:49', 'localhost', '登录成功');
INSERT INTO `tb_login_log` VALUES (7, 'admin', '2022-02-21 11:07:17', '127.0.0.1', '登录成功');
INSERT INTO `tb_login_log` VALUES (8, 'admin', '2022-02-21 11:09:40', '127.0.0.1', '登录成功');
INSERT INTO `tb_login_log` VALUES (9, 'admin', '2022-02-21 11:53:20', '127.0.0.1', '登录成功');
INSERT INTO `tb_login_log` VALUES (10, 'admin', '2022-02-21 12:14:38', '127.0.0.1', '登录成功');
INSERT INTO `tb_login_log` VALUES (11, 'admin', '2022-02-21 12:15:25', '127.0.0.1', '登录成功');
INSERT INTO `tb_login_log` VALUES (12, 'admin', '2022-02-21 12:18:14', '127.0.0.1', '登录成功');
INSERT INTO `tb_login_log` VALUES (13, 'admin', '2022-02-21 12:19:03', '127.0.0.1', '登录成功');
INSERT INTO `tb_login_log` VALUES (14, 'admin', '2022-02-21 12:21:05', '127.0.0.1', '登录成功');
INSERT INTO `tb_login_log` VALUES (15, 'admin', '2022-02-21 12:26:19', '127.0.0.1', '登录成功');

-- ----------------------------
-- Table structure for tb_means
-- ----------------------------
DROP TABLE IF EXISTS `tb_means`;
CREATE TABLE `tb_means`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `readtimes` int(0) UNSIGNED NOT NULL COMMENT '阅读次数',
  `goodtimes` int(0) UNSIGNED NULL DEFAULT NULL COMMENT '点赞次数',
  `badtimes` int(0) UNSIGNED NULL DEFAULT NULL COMMENT '踩次数',
  `createid` int(0) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_means
-- ----------------------------

-- ----------------------------
-- Table structure for tb_menu
-- ----------------------------
DROP TABLE IF EXISTS `tb_menu`;
CREATE TABLE `tb_menu`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '访问路径',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '路径别名',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '模板路径',
  `redirect` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '重定向路径',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '页面名称',
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '外链路径',
  `isHide` int(0) UNSIGNED NULL DEFAULT 0 COMMENT '导航栏是否展示',
  `isKeepAlive` int(0) UNSIGNED NULL DEFAULT 1 COMMENT '保持活跃',
  `isAffix` int(0) UNSIGNED NULL DEFAULT NULL,
  `isIframe` int(0) UNSIGNED NULL DEFAULT 0 COMMENT '是否内嵌',
  `roleids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色列表',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图标class名称',
  `pid` int(0) UNSIGNED NULL DEFAULT NULL COMMENT '父菜单id',
  `createid` int(0) UNSIGNED NULL DEFAULT NULL COMMENT '创建人',
  `sort` int(0) UNSIGNED NULL DEFAULT 0 COMMENT '排序顺序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_menu
-- ----------------------------
INSERT INTO `tb_menu` VALUES (5, '2021-12-31 02:51:43', '/permission', 'permission', 'Layout', NULL, '权限配置', NULL, 0, 1, NULL, 0, NULL, 'users-cog', NULL, NULL, 50);
INSERT INTO `tb_menu` VALUES (6, '2021-12-31 06:09:33', 'user', 'user', 'personnelManagement/userManagement/index.vue', NULL, '用户管理', NULL, 0, 1, NULL, 0, NULL, 'user-cog', 5, NULL, 10);
INSERT INTO `tb_menu` VALUES (7, '2021-12-31 06:10:22', 'role', 'role', 'personnelManagement/roleManagement/index.vue', NULL, '角色管理', NULL, 0, 1, NULL, 0, NULL, 'user-shield', 5, NULL, 20);
INSERT INTO `tb_menu` VALUES (8, '2021-12-31 06:13:41', 'menu', 'menu', 'personnelManagement/menuManagement/index.vue', NULL, '菜单管理', NULL, 0, 1, NULL, 0, NULL, 'dice-six', 5, NULL, 30);
INSERT INTO `tb_menu` VALUES (9, '2021-12-31 06:14:45', '/meet', 'meet', 'Layout', NULL, '资料管理', NULL, 0, 1, NULL, 0, NULL, 'tasks', NULL, NULL, 30);
INSERT INTO `tb_menu` VALUES (10, '2021-12-31 06:17:19', 'meetlist', 'meetlist', 'vab/meet/index.vue', NULL, '资料列表', NULL, 0, 1, NULL, 0, NULL, 'list', 9, NULL, 20);
INSERT INTO `tb_menu` VALUES (11, '2021-12-31 06:23:12', 'meetcreate', 'meetcreate', 'vab/meet/components/create.vue', NULL, '创建资料', NULL, 0, 1, NULL, 0, NULL, 'plus', 9, NULL, 30);
INSERT INTO `tb_menu` VALUES (12, '2021-12-31 06:24:12', 'meetedit', 'meetedit', 'vab/meet/components/edit.vue', NULL, '资料编辑', NULL, 1, 1, NULL, 0, NULL, 'file-signature', 9, NULL, 40);
INSERT INTO `tb_menu` VALUES (13, '2021-12-31 06:24:49', 'meetdetils', 'meetdetils', 'vab/meet/components/details.vue', NULL, '资料详情', NULL, 1, 1, NULL, 0, NULL, 'money-check', 9, NULL, 50);
INSERT INTO `tb_menu` VALUES (14, '2021-12-31 06:26:21', '/personalCenter', 'personalCenter', 'Layout', '', '个人中心', NULL, 1, 1, NULL, 0, NULL, 'street-view', NULL, NULL, 80);
INSERT INTO `tb_menu` VALUES (15, '2021-12-31 06:28:50', 'personalInfo', 'personalInfo', 'personalCenter/index.vue', NULL, '基础信息', NULL, 1, 1, NULL, 0, NULL, 'street-view', 14, NULL, 10);
INSERT INTO `tb_menu` VALUES (16, '2021-12-31 06:30:50', '/material', 'material', 'Layout', NULL, '资料', NULL, 0, 1, NULL, 0, NULL, 'box-open', NULL, NULL, 20);
INSERT INTO `tb_menu` VALUES (17, '2021-12-31 06:31:50', 'studylist', 'studylist', 'vab/study/index.vue', NULL, '学习资料', NULL, 0, 1, NULL, 0, NULL, 'box-open', 16, NULL, 2);
INSERT INTO `tb_menu` VALUES (18, '2021-12-31 06:32:20', 'audiolist', 'audiolist', 'vab/audio/index.vue', NULL, '音频资料', NULL, 0, 1, NULL, 0, NULL, 'box-open', 16, NULL, 10);
INSERT INTO `tb_menu` VALUES (19, '2022-01-07 09:15:40', '/log', '/log', 'Layout', NULL, '日志审计', NULL, 0, 1, NULL, 0, NULL, 'box-open', NULL, NULL, 40);
INSERT INTO `tb_menu` VALUES (20, '2022-01-07 09:16:24', 'operationLog', 'operationLog', 'vab/log/operationLog', NULL, '操作日志', NULL, 0, 1, NULL, 0, NULL, 'box-open', 19, NULL, 20);
INSERT INTO `tb_menu` VALUES (21, '2022-01-07 09:46:22', 'loginLog', 'loginLog', 'vab/log/loginLog', NULL, '登录日志', NULL, 0, 1, NULL, 0, NULL, 'box-open', 19, NULL, 10);
INSERT INTO `tb_menu` VALUES (23, '2022-02-21 12:10:35', 'meetcart', 'meetcart', 'vab/meet/cart.vue', NULL, '资料首页', NULL, 0, 1, NULL, 0, NULL, 'box', 9, NULL, 10);

-- ----------------------------
-- Table structure for tb_menu_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_menu_role`;
CREATE TABLE `tb_menu_role`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `roleid` int(0) UNSIGNED NULL DEFAULT NULL,
  `menuid` int(0) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `roleid`(`roleid`) USING BTREE,
  INDEX `menuid`(`menuid`) USING BTREE,
  CONSTRAINT `tb_menu_role_ibfk_1` FOREIGN KEY (`roleid`) REFERENCES `tb_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_menu_role_ibfk_2` FOREIGN KEY (`menuid`) REFERENCES `tb_menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 161 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_menu_role
-- ----------------------------
INSERT INTO `tb_menu_role` VALUES (56, '2021-12-31 08:08:03', 4, 16);
INSERT INTO `tb_menu_role` VALUES (57, '2021-12-31 08:08:03', 4, 18);
INSERT INTO `tb_menu_role` VALUES (58, '2021-12-31 08:08:03', 4, 17);
INSERT INTO `tb_menu_role` VALUES (59, '2021-12-31 08:08:03', 4, 9);
INSERT INTO `tb_menu_role` VALUES (60, '2021-12-31 08:08:03', 4, 10);
INSERT INTO `tb_menu_role` VALUES (61, '2021-12-31 08:08:03', 4, 11);
INSERT INTO `tb_menu_role` VALUES (62, '2021-12-31 08:08:03', 4, 12);
INSERT INTO `tb_menu_role` VALUES (63, '2021-12-31 08:08:03', 4, 13);
INSERT INTO `tb_menu_role` VALUES (64, '2021-12-31 08:08:03', 4, 14);
INSERT INTO `tb_menu_role` VALUES (65, '2021-12-31 08:08:03', 4, 15);
INSERT INTO `tb_menu_role` VALUES (144, '2022-02-21 12:20:48', 2, 16);
INSERT INTO `tb_menu_role` VALUES (145, '2022-02-21 12:20:48', 2, 17);
INSERT INTO `tb_menu_role` VALUES (146, '2022-02-21 12:20:48', 2, 18);
INSERT INTO `tb_menu_role` VALUES (147, '2022-02-21 12:20:48', 2, 9);
INSERT INTO `tb_menu_role` VALUES (148, '2022-02-21 12:20:48', 2, 23);
INSERT INTO `tb_menu_role` VALUES (149, '2022-02-21 12:20:48', 2, 10);
INSERT INTO `tb_menu_role` VALUES (150, '2022-02-21 12:20:48', 2, 11);
INSERT INTO `tb_menu_role` VALUES (151, '2022-02-21 12:20:48', 2, 12);
INSERT INTO `tb_menu_role` VALUES (152, '2022-02-21 12:20:48', 2, 13);
INSERT INTO `tb_menu_role` VALUES (153, '2022-02-21 12:20:48', 2, 19);
INSERT INTO `tb_menu_role` VALUES (154, '2022-02-21 12:20:48', 2, 21);
INSERT INTO `tb_menu_role` VALUES (155, '2022-02-21 12:20:48', 2, 20);
INSERT INTO `tb_menu_role` VALUES (156, '2022-02-21 12:20:48', 2, 5);
INSERT INTO `tb_menu_role` VALUES (157, '2022-02-21 12:20:48', 2, 6);
INSERT INTO `tb_menu_role` VALUES (158, '2022-02-21 12:20:48', 2, 7);
INSERT INTO `tb_menu_role` VALUES (159, '2022-02-21 12:20:48', 2, 8);
INSERT INTO `tb_menu_role` VALUES (160, '2022-02-21 12:20:48', 2, 14);
INSERT INTO `tb_menu_role` VALUES (161, '2022-02-21 12:20:48', 2, 15);

-- ----------------------------
-- Table structure for tb_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `tb_operation_log`;
CREATE TABLE `tb_operation_log`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `createid` int(0) UNSIGNED NULL DEFAULT NULL COMMENT '创建人id',
  `details` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作详情',
  `menuname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模块名称',
  `opertype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作类型',
  `account` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账户名',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `createid`(`createid`) USING BTREE,
  CONSTRAINT `tb_operation_log_ibfk_1` FOREIGN KEY (`createid`) REFERENCES `tb_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE = InnoDB AUTO_INCREMENT = 136 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_operation_log
-- ----------------------------
INSERT INTO `tb_operation_log` VALUES (4, '2022-01-07 10:26:42', 1, '访问界面首页', '首页', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (5, '2022-01-07 10:27:25', 1, '访问界面首页', '首页', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (6, '2022-01-07 10:27:26', 1, '访问界面首页', '首页', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (7, '2022-01-07 10:27:29', 1, '访问界面用户管理', '用户管理', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (8, '2022-01-07 10:27:32', 1, '访问界面操作日志', '操作日志', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (9, '2022-01-07 10:31:23', 1, '访问界面登录日志', '登录日志', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (10, '2022-01-07 10:31:25', 1, '访问界面首页', '首页', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (11, '2022-01-07 10:31:33', 1, '访问界面登录日志', '登录日志', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (12, '2022-01-07 10:31:37', 1, '访问界面操作日志', '操作日志', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (13, '2022-01-07 10:31:49', 1, '访问界面操作日志', '操作日志', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (14, '2022-01-07 10:31:51', 1, '访问界面登录日志', '登录日志', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (15, '2022-01-07 10:33:16', 1, '访问界面未知', '未知', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (16, '2022-01-07 10:33:17', 1, '访问界面首页', '首页', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (17, '2022-01-07 10:33:23', 1, '访问界面操作日志', '操作日志', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (18, '2022-01-07 10:37:22', 1, '访问访问undefined', '访问undefined', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (19, '2022-01-07 10:37:23', 1, '访问访问首页', '访问首页', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (20, '2022-01-07 10:37:27', 1, '访问访问操作日志', '访问操作日志', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (21, '2022-01-07 10:37:48', 1, '访问undefined', '访问undefined', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (22, '2022-01-07 10:37:50', 1, '访问undefined', '访问undefined', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (23, '2022-01-07 10:37:51', 1, '访问首页', '访问首页', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (24, '2022-01-07 10:37:53', 1, '访问操作日志', '访问操作日志', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (25, '2022-01-07 10:38:18', 1, '界面不存在', '界面不存在', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (26, '2022-01-07 10:38:19', 1, '访问首页', '访问首页', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (27, '2022-01-07 10:38:22', 1, '访问登录日志', '访问登录日志', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (28, '2022-01-07 10:38:24', 1, '访问操作日志', '访问操作日志', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (29, '2022-01-07 10:39:13', 1, '界面不存在', '界面不存在', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (30, '2022-01-07 10:39:14', 1, '界面不存在', '界面不存在', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (31, '2022-01-07 10:39:15', 1, '访问首页', '访问首页', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (32, '2022-01-07 10:39:17', 1, '访问登录日志', '访问登录日志', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (33, '2022-01-07 10:39:19', 1, '访问操作日志', '访问操作日志', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (34, '2022-01-07 10:39:35', 1, '界面不存在', '404', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (35, '2022-01-07 10:39:36', 1, '访问首页', '首页', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (36, '2022-01-07 10:39:37', 1, '访问登录日志', '登录日志', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (37, '2022-01-07 10:39:40', 1, '访问操作日志', '操作日志', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (38, '2022-02-21 11:01:10', 1, '访问首页', '首页', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (39, '2022-02-21 11:01:32', 1, '访问资料列表', '资料列表', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (40, '2022-02-21 11:02:09', 1, '访问菜单管理', '菜单管理', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (41, '2022-02-21 11:07:17', 1, '访问首页', '首页', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (42, '2022-02-21 11:07:29', 1, '访问菜单管理', '菜单管理', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (43, '2022-02-21 11:09:40', 1, '访问首页', '首页', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (44, '2022-02-21 11:09:44', 1, '访问菜单管理', '菜单管理', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (45, '2022-02-21 11:10:56', 1, '界面不存在', '404', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (46, '2022-02-21 11:11:02', 1, '访问首页', '首页', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (47, '2022-02-21 11:11:06', 1, '访问菜单管理', '菜单管理', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (48, '2022-02-21 11:14:13', 1, '界面不存在', '404', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (49, '2022-02-21 11:14:15', 1, '访问首页', '首页', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (50, '2022-02-21 11:14:17', 1, '访问菜单管理', '菜单管理', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (51, '2022-02-21 11:19:37', 1, '界面不存在', '404', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (52, '2022-02-21 11:19:39', 1, '访问首页', '首页', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (53, '2022-02-21 11:19:40', 1, '访问菜单管理', '菜单管理', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (54, '2022-02-21 11:21:47', 1, '界面不存在', '404', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (55, '2022-02-21 11:21:48', 1, '访问首页', '首页', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (56, '2022-02-21 11:21:50', 1, '访问菜单管理', '菜单管理', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (57, '2022-02-21 11:22:29', 1, '界面不存在', '404', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (58, '2022-02-21 11:22:30', 1, '访问首页', '首页', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (59, '2022-02-21 11:22:32', 1, '访问菜单管理', '菜单管理', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (60, '2022-02-21 11:30:13', 1, '界面不存在', '404', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (61, '2022-02-21 11:30:14', 1, '访问首页', '首页', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (62, '2022-02-21 11:30:18', 1, '访问创建资料', '创建资料', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (63, '2022-02-21 11:30:19', 1, '访问菜单管理', '菜单管理', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (64, '2022-02-21 11:31:32', 1, '界面不存在', '404', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (65, '2022-02-21 11:31:36', 1, '访问首页', '首页', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (66, '2022-02-21 11:31:38', 1, '访问菜单管理', '菜单管理', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (67, '2022-02-21 11:38:38', 1, '界面不存在', '404', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (68, '2022-02-21 11:38:44', 1, '访问首页', '首页', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (69, '2022-02-21 11:39:29', 1, '访问创建资料', '创建资料', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (70, '2022-02-21 11:39:30', 1, '访问菜单管理', '菜单管理', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (71, '2022-02-21 11:46:08', 1, '界面不存在', '404', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (72, '2022-02-21 11:46:10', 1, '访问首页', '首页', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (73, '2022-02-21 11:46:11', 1, '访问菜单管理', '菜单管理', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (74, '2022-02-21 11:49:06', 1, '界面不存在', '404', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (75, '2022-02-21 11:49:08', 1, '访问首页', '首页', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (76, '2022-02-21 11:49:10', 1, '访问菜单管理', '菜单管理', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (77, '2022-02-21 11:50:49', 1, '界面不存在', '404', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (78, '2022-02-21 11:50:51', 1, '访问首页', '首页', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (79, '2022-02-21 11:50:53', 1, '访问菜单管理', '菜单管理', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (80, '2022-02-21 11:52:00', 1, '界面不存在', '404', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (81, '2022-02-21 11:52:02', 1, '访问首页', '首页', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (82, '2022-02-21 11:52:03', 1, '访问菜单管理', '菜单管理', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (83, '2022-02-21 11:53:20', 1, '访问菜单管理', '菜单管理', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (84, '2022-02-21 12:04:20', 1, '访问首页', '首页', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (85, '2022-02-21 12:04:24', 1, '访问资料列表', '资料列表', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (86, '2022-02-21 12:07:27', 1, '界面不存在', '404', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (87, '2022-02-21 12:07:33', 1, '访问首页', '首页', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (88, '2022-02-21 12:07:43', 1, '访问首页', '首页', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (89, '2022-02-21 12:07:56', 1, '访问首页', '首页', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (90, '2022-02-21 12:08:01', 1, '访问菜单管理', '菜单管理', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (91, '2022-02-21 12:08:42', 1, '界面不存在', '404', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (92, '2022-02-21 12:08:45', 1, '访问首页', '首页', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (93, '2022-02-21 12:08:48', 1, '访问创建资料', '创建资料', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (94, '2022-02-21 12:08:55', 1, '访问菜单管理', '菜单管理', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (95, '2022-02-21 12:11:44', 1, '界面不存在', '404', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (96, '2022-02-21 12:11:48', 1, '界面不存在', '404', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (97, '2022-02-21 12:11:56', 1, '界面不存在', '404', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (98, '2022-02-21 12:12:02', 1, '访问首页', '首页', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (99, '2022-02-21 12:12:07', 1, '访问菜单管理', '菜单管理', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (100, '2022-02-21 12:12:37', 1, '界面不存在', '404', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (101, '2022-02-21 12:12:38', 1, '访问首页', '首页', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (102, '2022-02-21 12:12:42', 1, '访问菜单管理', '菜单管理', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (103, '2022-02-21 12:13:53', 1, '界面不存在', '404', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (104, '2022-02-21 12:13:55', 1, '访问首页', '首页', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (105, '2022-02-21 12:13:56', 1, '访问资料列表', '资料列表', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (106, '2022-02-21 12:13:58', 1, '访问菜单管理', '菜单管理', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (107, '2022-02-21 12:14:38', 1, '访问菜单管理', '菜单管理', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (108, '2022-02-21 12:14:53', 1, '访问角色管理', '角色管理', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (109, '2022-02-21 12:15:25', 1, '访问角色管理', '角色管理', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (110, '2022-02-21 12:15:28', 1, '访问资料列表', '资料列表', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (111, '2022-02-21 12:15:34', 1, '访问菜单管理', '菜单管理', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (112, '2022-02-21 12:15:56', 1, '访问角色管理', '角色管理', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (113, '2022-02-21 12:16:00', 1, '访问用户管理', '用户管理', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (114, '2022-02-21 12:16:07', 1, '访问角色管理', '角色管理', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (115, '2022-02-21 12:18:08', 1, '界面不存在', '404', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (116, '2022-02-21 12:18:09', 1, '界面不存在', '404', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (117, '2022-02-21 12:18:10', 1, '访问首页', '首页', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (118, '2022-02-21 12:18:14', 1, '访问首页', '首页', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (119, '2022-02-21 12:18:43', 1, '访问菜单管理', '菜单管理', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (120, '2022-02-21 12:19:03', 1, '访问菜单管理', '菜单管理', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (121, '2022-02-21 12:20:35', 1, '访问角色管理', '角色管理', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (122, '2022-02-21 12:21:05', 1, '访问角色管理', '角色管理', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (123, '2022-02-21 12:22:43', 1, '界面不存在', '404', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (124, '2022-02-21 12:22:44', 1, '访问首页', '首页', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (125, '2022-02-21 12:22:58', 1, '访问菜单管理', '菜单管理', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (126, '2022-02-21 12:23:48', 1, '界面不存在', '404', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (127, '2022-02-21 12:23:54', 1, '访问首页', '首页', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (128, '2022-02-21 12:24:19', 1, '访问首页', '首页', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (129, '2022-02-21 12:25:52', 1, '访问菜单管理', '菜单管理', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (130, '2022-02-21 12:25:55', 1, '界面不存在', '404', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (131, '2022-02-21 12:25:57', 1, '访问首页', '首页', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (132, '2022-02-21 12:25:59', 1, '访问菜单管理', '菜单管理', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (133, '2022-02-21 12:26:19', 1, '访问菜单管理', '菜单管理', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (134, '2022-02-21 12:26:21', 1, '访问资料首页', '资料首页', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (135, '2022-02-21 12:26:24', 1, '访问资料列表', '资料列表', '界面查询', NULL);
INSERT INTO `tb_operation_log` VALUES (136, '2022-02-21 12:26:26', 1, '访问资料首页', '资料首页', '界面查询', NULL);

-- ----------------------------
-- Table structure for tb_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名称',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `createid` int(0) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `createid`(`createid`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_role
-- ----------------------------
INSERT INTO `tb_role` VALUES (2, '2021-12-31 07:51:57', '管理员', NULL, NULL);
INSERT INTO `tb_role` VALUES (4, '2021-12-31 08:08:03', '普通用户', NULL, NULL);

-- ----------------------------
-- Table structure for tb_study_sort
-- ----------------------------
DROP TABLE IF EXISTS `tb_study_sort`;
CREATE TABLE `tb_study_sort`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `tagname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_study_sort
-- ----------------------------

-- ----------------------------
-- Table structure for tb_study_types
-- ----------------------------
DROP TABLE IF EXISTS `tb_study_types`;
CREATE TABLE `tb_study_types`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类型名称',
  `createid` int(0) NULL DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_study_types
-- ----------------------------

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名称',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '登录密码',
  `phone` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机号',
  `sign` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '签名',
  `gender` int(0) UNSIGNED NULL DEFAULT NULL COMMENT '性别',
  `logintimes` int(0) UNSIGNED NULL DEFAULT NULL COMMENT '登录次数',
  `account` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '账户名称',
  `roleids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色列表',
  `lastlogintime` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (1, '2021-12-20 14:59:16', '/image/userheads/labixiaoxin.png', '超级管理员', '79010e2bba4fcfb1b2bc150b8f17e030', NULL, '建议唯一账户，拥有系统最高权限。', 1, 0, 'admin', '2', NULL);
INSERT INTO `tb_user` VALUES (2, '2021-12-31 08:21:40', NULL, '2222', '79010e2bba4fcfb1b2bc150b8f17e030', NULL, NULL, NULL, 0, 'danhua', '2,4', NULL);
INSERT INTO `tb_user` VALUES (3, '2022-01-01 13:47:12', NULL, 'danhua', '96e79218965eb72c92a549dd5a330112', NULL, NULL, NULL, 0, 'danhua2', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
