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

 Date: 02/01/2022 18:44:46
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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_article
-- ----------------------------
INSERT INTO `tb_article` VALUES (3, '2022-01-02 10:40:27', 1, '<p>百度为您找到相关结果约169,000个</p><h3><a href=\"https://www.baidu.com/link?url=QHsYPdWjboJt9ub5VVSvwsf8Ifep_RBXgoBzIC0f7hvk5T2dxw2nHWeIAK3ptd0K5lnpXG352KHGtNrM0tWbWa&amp;wd=&amp;eqid=8e66a459000bedbc0000000661d17c7e\" target=\"_blank\">TypeScript:序列化JSON中的<em>BigInt</em>&nbsp;- 我爱学习网</a></h3><p>2020年12月28日&nbsp;不管我对上面的行做了什么,如果我试图打印一个包含<em>BigInt</em>的JSON,我会得到:TypeError:&nbsp;<em>Do</em>&nbsp;<em>not</em>&nbsp;<em>know</em>&nbsp;<em>how</em>&nbsp;<em>to</em>&nbsp;<em>serialize</em>&nbsp;<em>a</em>&nbsp;<em>BigInt</em>。如有任何帮助,我们将不胜感激。...</p><p><a target=\"_blank\" href=\"http://www.baidu.com/link?url=QHsYPdWjboJt9ub5VVSvwsf8Ifep_RBXgoBzIC0f7hvk5T2dxw2nHWeIAK3ptd0K5lnpXG352KHGtNrM0tWbWa\">www.5axxw.com/questions/conten...</a></p><p><i></i></p><p><a href=\"http://cache.baiducontent.com/c?m=-J15qzVYTgzwaJbLy2yGrQhVk_pmnWxTUEbiZWK-zqBBG2EZx_Rznaem72kZGg_qzUp59g1oqBzIdeYz2UyCXSYvNlydc-fN0COl8M3OspINzg1ilJfWiY9BEMQSkP8hhA7-teZXnONkBWIKsjkRQLpQ2WTk93wfHB1JsBQ4Sb2KrxUKo-k-RYPTV23uVj_h&amp;p=9c769a47809f11a05bef9521530ac4&amp;newp=c0769a47c0af59ec08e2977c0c419f231610db2151d7d1176b82c825d7331b001c3bbfb422201600d7ce7a6d05ad4e5ee9f03c763d0923a3dda5c91d9fb4c574799e4b2c33&amp;s=b8af7d0fbf094517&amp;user=baidu&amp;fm=sc&amp;query=Do+not+know+how+to+serialize+a+BigInt&amp;qid=8e66a459000bedbc&amp;p1=1\" target=\"_blank\">百度快照</a></p><h3><a href=\"http://www.baidu.com/link?url=4AXvwgGfJwMg1tLc0Od0wpaTzE2m1dFiGRwr-uPvhnyY99YEOhoFM0Vi1otWzFDnLL8ZSFveVSELiLDzCEGAJSA3PTcGwLW45yPJiYMVfbO\" target=\"_blank\">浅拷贝和深拷贝---JS实现深拷贝的方式_东风吹更白的博客-C...</a></h3><p>2020年11月25日&nbsp;忽略value为function, undefind, symbol, 并且在序列化<em>BigInt</em>时会抛出语法错误:TypeError:&nbsp;<em>Do</em>&nbsp;<em>not</em>&nbsp;<em>know</em>&nbsp;<em>how</em>&nbsp;<em>to</em>&nbsp;<em>serialize</em>&nbsp;<em>a</em>&nbsp;<em>BigInt</em>&nbsp;// 序列化function, undefi...</p><p><a target=\"_blank\" href=\"http://www.baidu.com/link?url=4AXvwgGfJwMg1tLc0Od0wpaTzE2m1dFiGRwr-uPvhnyY99YEOhoFM0Vi1otWzFDnLL8ZSFveVSELiLDzCEGAJSA3PTcGwLW45yPJiYMVfbO\"></a></p><p><a target=\"_blank\" href=\"http://www.baidu.com/link?url=4AXvwgGfJwMg1tLc0Od0wpaTzE2m1dFiGRwr-uPvhnyY99YEOhoFM0Vi1otWzFDnLL8ZSFveVSELiLDzCEGAJSA3PTcGwLW45yPJiYMVfbO\"><img src=\"https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=188955431,3893600750&amp;fm=195&amp;app=88&amp;f=JPEG?w=200&amp;h=200\"/></a></p><p><a target=\"_blank\" href=\"http://www.baidu.com/link?url=4AXvwgGfJwMg1tLc0Od0wpaTzE2m1dFiGRwr-uPvhnyY99YEOhoFM0Vi1otWzFDnLL8ZSFveVSELiLDzCEGAJSA3PTcGwLW45yPJiYMVfbO\">CSDN技术社区</a></p><p><i></i></p><p><a href=\"http://cache.baiducontent.com/c?m=dfmzYlvY1m9OabCH7ZPIB9g-PBD7mNGPD9iii_R0hQTo3T3BniBokKxSNNaiV0d7EFFIyeHSwprnYpb6N19v5rlTRMU-jgx_yf0kbWefZ1KmYFnEOi1C5Ukr1dMVT0J9yG4p-hVJFIc_E3lN8CkmmvMYTjA58hS9b5qArB42TQKeQcaQjY61jEWqLBlt9EewrWBkWS036smKtAzlQ9H1M_&amp;p=c67fd302958412a05abd9b7a0640&amp;newp=882a914e908112a05aa4cc27170092695d0fc20e38ddd501298ffe0cc4241a1a1a3aecbe25241400d8c3766303a84b5feafa32783d0034f1f689df08d2ecce7e69ca&amp;s=182be0c5cdcd5072&amp;user=baidu&amp;fm=sc&amp;query=Do+not+know+how+to+serialize+a+BigInt&amp;qid=8e66a459000bedbc&amp;p1=2\" target=\"_blank\">百度快照</a></p><h3><a href=\"http://www.baidu.com/link?url=_aRxc2SutV-1xsnMJJB31AUydqnQpRN4XkZBziwtkFm_c6-plP7KZpDmHuFBoUPhx3pWzP9iTkOz85JBLfe2j_\" target=\"_blank\"><em>Do</em>&nbsp;<em>not</em>&nbsp;<em>know</em>&nbsp;<em>how</em>&nbsp;<em>to</em>&nbsp;<em>serialize</em>&nbsp;<em>a</em>&nbsp;<em>BigInt</em>&nbsp;· Issue #614 · ...</a></h3><p>查看此网页的中文翻译，请点击&nbsp;<a href=\"http://www.baidu.com/link?url=4SDYfj6rUTD-Q8FuBwsFcDFeZBAF70iPuoj-wWhRB8G7g4sMWM-L5aMo0SvZsVYQ4o2yj6bQQN3xh7PjSY-XeEaQVsQ7cxiCIhgkeB0DtGk2eD9RAMG8lwDomBjZ0UHr4UVYSghr83IxF7ncsqEJdRY3vH31hCt8abGb8c9uB7lVBiOesmgQgvUnsENu1QXSkGT4wkhQM42vsDrKeBzX6_\" target=\"_blank\">翻译此页</a></p><p>Jump&nbsp;<em>to</em>↵ Sign inSign up prisma/studio Notifications Star472 Fork10 Code Issues110 Pull requests Security Insights More New issue Jump&nbsp;<em>to</em>&nbsp;bottom&nbsp;<em>Do</em>&nbsp;<em>not</em>&nbsp;<em>know</em>&nbsp;<em>how</em>&nbsp;<em>t</em>...</p><p><a target=\"_blank\" href=\"http://www.baidu.com/link?url=_aRxc2SutV-1xsnMJJB31AUydqnQpRN4XkZBziwtkFm_c6-plP7KZpDmHuFBoUPhx3pWzP9iTkOz85JBLfe2j_\">github</a></p><p><i></i></p><p><a href=\"http://cache.baiducontent.com/c?m=giWbSZguHPImjyd767X5szti7Ux_T03O_5BexgIX1zWcpOFOoZh-BhZQ9dIAONm72nWIG8pfivRJpo34Vt14YfQ0dMgCnYf608rssKsSycPFq-mdPwrlhhr5RN2I64vNGM1DFWfje2supJlc9RilOrvxV3T57o67BBON1GrIGB7&amp;p=9a3ec64ad4d20ae908e2943747&amp;newp=8b2a9715d9c333e04eaae6395b53d8224216ed6236d5c44324b9d71fd325001c1b69e6b92126140fd5cf786506ad4a5ce0f43c78341766dada9fca458ae7c4&amp;s=cfcd208495d565ef&amp;user=baidu&amp;fm=sc&amp;query=Do+not+know+how+to+serialize+a+BigInt&amp;qid=8e66a459000bedbc&amp;p1=3\" target=\"_blank\">百度快照</a></p><h3><a href=\"http://www.baidu.com/link?url=kzbU9cDczOYlzTpKizqdqT6sXKesLsL4ntnicoF3MORjUGKiGdSlW3IKTqhgKjVF2Iy9T3epuwK7XEMhzBHGEq\" target=\"_blank\">JSON&nbsp;<em>Bigint</em>&nbsp;大数精度丢失的背后 - 云+社区 - 腾讯云</a></h3><p>2019年7月31日&nbsp;作为 ES 标准的制定者,TC39 委员会的大神们搁置了这个问题,而调皮的 Chrome 则在开发者试图 stringify 一个&nbsp;<em>BigInt</em>&nbsp;时,抛出了<em>Do</em>&nbsp;<em>not</em>&nbsp;<em>know</em>&nbsp;<em>how</em>&nbsp;<em>to</em>&nbsp;<em>serialize</em>&nbsp;<em>a</em>&nbsp;<em>B</em>...</p><p><a target=\"_blank\" href=\"http://www.baidu.com/link?url=kzbU9cDczOYlzTpKizqdqT6sXKesLsL4ntnicoF3MORjUGKiGdSlW3IKTqhgKjVF2Iy9T3epuwK7XEMhzBHGEq\">腾讯云计算</a></p><p><i></i></p><p><a href=\"http://cache.baiducontent.com/c?m=2w9d9U4aUnVhfEP88ZDNfhaeRpzYi5fJutej2dUvyGvAeLmf5ByF-NSnwvOucgFYbbEeCon1pYGdCpmULAOT4r6d_D4fMPnLstDtG_les8vnAqGWr7RqLIy-2gt_teORvrapCoTzNcroRkWNPOavENCa_ElUzFbaN_9yJaaC_UqSL_pz7ePESuhizKCmuJKb&amp;p=923b8b0f85cc43b444bd9b7d0c16c4&amp;newp=977ac64ad49a1bf305bd9b7d0c16cf231610db2151d6d31f6b82c825d7331b001c3bbfb422201600d7ce7a6d05ad4e5ee9f03c763d0923a3dda5c91d9fb4c57479d17d682d&amp;s=6ecbdd6ec859d284&amp;user=baidu&amp;fm=sc&amp;query=Do+not+know+how+to+serialize+a+BigInt&amp;qid=8e66a459000bedbc&amp;p1=4\" target=\"_blank\">百度快照</a></p><h3><a href=\"http://www.baidu.com/link?url=7-XygcvZN3MPja8uCQFSrOxbpzlNge-ujmhtszPtmeyzJqTyM32yHJIpTrw7RdWuENdxNO7G7OG6mcpXi-S6zTQr7GNndfKO07YTDRUrxItU-ZWGLn1K_4JgAVpfcG4o\" target=\"_blank\">TypeScript:&nbsp;<em>serialize</em>&nbsp;<em>BigInt</em>&nbsp;in JSON - Stack Overflow</a></h3><p>No matter what I&nbsp;<em>do</em>&nbsp;<em>to</em>&nbsp;the lines above, if I try&nbsp;<em>to</em>&nbsp;print a JSON containing&nbsp;<em>a</em>&nbsp;<em>BigInt</em>, I get:TypeError:&nbsp;<em>Do</em>&nbsp;<em>not</em>&nbsp;<em>know</em>&nbsp;<em>how</em>&nbsp;<em>to</em>&nbsp;<em>serialize</em>&nbsp;<em>a</em>&nbsp;<em>BigInt</em>. Any help is apprecia...</p><p><a target=\"_blank\" href=\"http://www.baidu.com/link?url=7-XygcvZN3MPja8uCQFSrOxbpzlNge-ujmhtszPtmeyzJqTyM32yHJIpTrw7RdWuENdxNO7G7OG6mcpXi-S6zTQr7GNndfKO07YTDRUrxItU-ZWGLn1K_4JgAVpfcG4o\">stackoverflow.com/questions/65...</a></p><p><i></i></p><p><a href=\"http://cache.baiducontent.com/c?m=Hf2JOVRs9B_6dxtYqQAZtRIBMGnEoWiEJ0So0OcVxJsfY60T__CJRqg4uXhenEA8NoT7x2YDaFnAThfL4x484lOjQD2WYsRlCvL0QgIEOFkJNmHN-xbDMH9JnU_V2xZLO74zqhuooa8olSfyZVM-nAfQUrq_f8phdvuE7CtTCkxHkU3KX49Z8L1q7G_ZOyTCvkB5YXhE2q8BHEIn9NTUWIqc00b2fsQAnytHnr2-Fd7&amp;p=c474c015d9c743f00be296281508&amp;newp=973e8e0a86cc45ad05a5c7710f4092695d0fc20e3bdcda01298ffe0cc4241a1a1a3aecbe25241400d8c3766303a84b5feafa32783d0034f1f689df08d2ecce7e72c0&amp;s=35f4a8d465e6e1ed&amp;user=baidu&amp;fm=sc&amp;query=Do+not+know+how+to+serialize+a+BigInt&amp;qid=8e66a459000bedbc&amp;p1=5\" target=\"_blank\">百度快照</a>&nbsp;-&nbsp;<a href=\"http://www.baidu.com/link?url=STp9RN28SsJZpFujbhmdwzphS4p_PZDkGtDOi6m4RRGljaVVdMT9Mk3kcwea24e2F3MW8IM3HSVCHX92jZuzcuabOWbBjVnXiE4Wu3UugfCU0o4qemk81fAMVagoNE1CyK4q44SG0EPmsbZZFcwfwoDc5XyOMBHY7W3U4CfmbiXyIUmcLUWg3xUwlP2pfzR4oZTeToXikVEszCz0T_-1te9IufCy178XoSLyV1nQqpXAiyXNm1RpsRPKcGZv3EyGMj6zvIa4lfVC_Cllo4VnHq\" target=\"_blank\">翻译此页</a></p><p>其他人还在搜</p><p><a href=\"https://www.baidu.com/s?wd=not%20know%E4%BB%80%E4%B9%88%E6%84%8F%E6%80%9D&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=1&amp;ie=utf-8&amp;rsv_pq=8e66a459000bedbc&amp;oq=Do%20not%20know%20how%20to%20serialize%20a%20BigInt&amp;rsv_t=d9c7nWY9xvLV2RLn0W%2B%2FuQFM89LvhcUPZMkdt1TZcx7SgWuCS7eTS1lvF%2FKIHdpL%2Bx0g&amp;rsf=100631202&amp;rsv_dl=0_prs_28608_1\">not know什么意思</a><a href=\"https://www.baidu.com/s?wd=i%20not%20know%E4%BB%80%E4%B9%88%E6%84%8F%E6%80%9D&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=1&amp;ie=utf-8&amp;rsv_pq=8e66a459000bedbc&amp;oq=Do%20not%20know%20how%20to%20serialize%20a%20BigInt&amp;rsv_t=5ed47MwJwxS55vYNzaUJ%2BfoVwsn1NHKvmdSOz%2B9xOCopNq8txnYFJcIR2p7hZWSXqzgP&amp;rsf=100631202&amp;rsv_dl=0_prs_28608_2\">i not know什么意思</a><a href=\"https://www.baidu.com/s?wd=knot&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=1&amp;ie=utf-8&amp;rsv_pq=8e66a459000bedbc&amp;oq=Do%20not%20know%20how%20to%20serialize%20a%20BigInt&amp;rsv_t=5ed47MwJwxS55vYNzaUJ%2BfoVwsn1NHKvmdSOz%2B9xOCopNq8txnYFJcIR2p7hZWSXqzgP&amp;rsf=100631202&amp;rsv_dl=0_prs_28608_3\">knot</a><a href=\"https://www.baidu.com/s?wd=know%E5%92%8Chow&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=1&amp;ie=utf-8&amp;rsv_pq=8e66a459000bedbc&amp;oq=Do%20not%20know%20how%20to%20serialize%20a%20BigInt&amp;rsv_t=5ed47MwJwxS55vYNzaUJ%2BfoVwsn1NHKvmdSOz%2B9xOCopNq8txnYFJcIR2p7hZWSXqzgP&amp;rsf=100631202&amp;rsv_dl=0_prs_28608_4\">know和how</a><a href=\"https://www.baidu.com/s?wd=knowknow%E6%98%AF%E8%B0%81&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=1&amp;ie=utf-8&amp;rsv_pq=8e66a459000bedbc&amp;oq=Do%20not%20know%20how%20to%20serialize%20a%20BigInt&amp;rsv_t=5ed47MwJwxS55vYNzaUJ%2BfoVwsn1NHKvmdSOz%2B9xOCopNq8txnYFJcIR2p7hZWSXqzgP&amp;rsf=100631202&amp;rsv_dl=0_prs_28608_5\">knowknow是谁</a><a href=\"https://www.baidu.com/s?wd=how%20youknow&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=1&amp;ie=utf-8&amp;rsv_pq=8e66a459000bedbc&amp;oq=Do%20not%20know%20how%20to%20serialize%20a%20BigInt&amp;rsv_t=80e1JFtQmumEGVHBKkQqMtEHuSw1dy5ZmxWgBe5%2FKhFJSaW1HqYE145OGFDNZFEJfgR0&amp;rsf=100631202&amp;rsv_dl=0_prs_28608_6\">how youknow</a><a href=\"https://www.baidu.com/s?wd=do%20you%20know%E4%BB%80%E4%B9%88%E6%84%8F%E6%80%9D&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=1&amp;ie=utf-8&amp;rsv_pq=8e66a459000bedbc&amp;oq=Do%20not%20know%20how%20to%20serialize%20a%20BigInt&amp;rsv_t=80e1JFtQmumEGVHBKkQqMtEHuSw1dy5ZmxWgBe5%2FKhFJSaW1HqYE145OGFDNZFEJfgR0&amp;rsf=100631202&amp;rsv_dl=0_prs_28608_7\">do you know什么意思</a><a href=\"https://www.baidu.com/s?wd=you%20know&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=1&amp;ie=utf-8&amp;rsv_pq=8e66a459000bedbc&amp;oq=Do%20not%20know%20how%20to%20serialize%20a%20BigInt&amp;rsv_t=80e1JFtQmumEGVHBKkQqMtEHuSw1dy5ZmxWgBe5%2FKhFJSaW1HqYE145OGFDNZFEJfgR0&amp;rsf=100631202&amp;rsv_dl=0_prs_28608_8\">you know</a><a href=\"https://www.baidu.com/s?wd=well%20known&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=1&amp;ie=utf-8&amp;rsv_pq=8e66a459000bedbc&amp;oq=Do%20not%20know%20how%20to%20serialize%20a%20BigInt&amp;rsv_t=80e1JFtQmumEGVHBKkQqMtEHuSw1dy5ZmxWgBe5%2FKhFJSaW1HqYE145OGFDNZFEJfgR0&amp;rsf=100631202&amp;rsv_dl=0_prs_28608_9\">well known</a><a href=\"https://www.baidu.com/s?wd=Do%20you%20know%20how&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=1&amp;ie=utf-8&amp;rsv_pq=8e66a459000bedbc&amp;oq=Do%20not%20know%20how%20to%20serialize%20a%20BigInt&amp;rsv_t=80e1JFtQmumEGVHBKkQqMtEHuSw1dy5ZmxWgBe5%2FKhFJSaW1HqYE145OGFDNZFEJfgR0&amp;rsf=100631202&amp;rsv_dl=0_prs_28608_10\">Do you know how</a><a href=\"https://www.baidu.com/s?wd=how%20do%20i%20know&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=1&amp;ie=utf-8&amp;rsv_pq=8e66a459000bedbc&amp;oq=Do%20not%20know%20how%20to%20serialize%20a%20BigInt&amp;rsv_t=80e1JFtQmumEGVHBKkQqMtEHuSw1dy5ZmxWgBe5%2FKhFJSaW1HqYE145OGFDNZFEJfgR0&amp;rsf=100631202&amp;rsv_dl=0_prs_28608_11\">how do i know</a><a href=\"https://www.baidu.com/s?wd=do%20you%20know&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=1&amp;ie=utf-8&amp;rsv_pq=8e66a459000bedbc&amp;oq=Do%20not%20know%20how%20to%20serialize%20a%20BigInt&amp;rsv_t=80e1JFtQmumEGVHBKkQqMtEHuSw1dy5ZmxWgBe5%2FKhFJSaW1HqYE145OGFDNZFEJfgR0&amp;rsf=100631202&amp;rsv_dl=0_prs_28608_12\">do you know</a></p><h3><a href=\"http://www.baidu.com/link?url=ISYxXbxy155fLuOTbJgakXRXq1Yg9NLfKWvF_7Tsu3mUSsU4v4yzPpE4tFjr8S7tRpiuXMyIQe6rBaPGxOZQG7_mk5IW2_gDFUo8KmQkD2K\" target=\"_blank\">ES2020(ES11)新特性_等风来0212的博客-CSDN博客_es2020新...</a></h3><p><a href=\"http://www.baidu.com/link?url=ISYxXbxy155fLuOTbJgakXRXq1Yg9NLfKWvF_7Tsu3mUSsU4v4yzPpE4tFjr8S7tRpiuXMyIQe6rBaPGxOZQG7_mk5IW2_gDFUo8KmQkD2K\" target=\"_blank\"><img src=\"https://t9.baidu.com/it/u=2710757382,309848161&amp;fm=218&amp;app=126&amp;f=PNG?w=121&amp;h=75&amp;s=C8231D72199BE0CA5CCCC0CF0300C0B2\"/></a></p><p>2021年2月28日&nbsp;ES2020(ES11)新特性概述九大新特性截图-简介新特性详解String.prototype.matchAll--字符串正则匹配扩展-返回全部结果的迭代器import() --动态导入 / 按需导入<em>BigInt</em>--大整数插入链接...</p><p><a target=\"_blank\" href=\"http://www.baidu.com/link?url=ISYxXbxy155fLuOTbJgakXRXq1Yg9NLfKWvF_7Tsu3mUSsU4v4yzPpE4tFjr8S7tRpiuXMyIQe6rBaPGxOZQG7_mk5IW2_gDFUo8KmQkD2K\"></a></p><p><a target=\"_blank\" href=\"http://www.baidu.com/link?url=ISYxXbxy155fLuOTbJgakXRXq1Yg9NLfKWvF_7Tsu3mUSsU4v4yzPpE4tFjr8S7tRpiuXMyIQe6rBaPGxOZQG7_mk5IW2_gDFUo8KmQkD2K\"><img src=\"https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=188955431,3893600750&amp;fm=195&amp;app=88&amp;f=JPEG?w=200&amp;h=200\"/></a></p><p><a target=\"_blank\" href=\"http://www.baidu.com/link?url=ISYxXbxy155fLuOTbJgakXRXq1Yg9NLfKWvF_7Tsu3mUSsU4v4yzPpE4tFjr8S7tRpiuXMyIQe6rBaPGxOZQG7_mk5IW2_gDFUo8KmQkD2K\">CSDN技术社区</a></p><p><i></i></p><p><a href=\"http://cache.baiducontent.com/c?m=mGqqt5ewrKFaSiD3ZLMPau760gkLA4xI0394U9iHxgcya17L3j-E-Rapyo-wnOexOckL5ii90Dx7JX6c5fWf9BvQEoy8br-MxRkwg-1YU4wAJqkMrMnoXgY54usjaVvm8OKk0IbY-EIMctk2gkBmbv61kGWPQgoqnUjSIjgyi84UhagyHoSNMRi22Ij12ezt7GdlndrKvxFgkf_y0z1lr_&amp;p=8a769a4790d809f808e29074564c&amp;newp=8a70de0385cc43b108e290744e5192695d0fc20e38d5d401298ffe0cc4241a1a1a3aecbe25241400d8c3766303a84b5feafa32783d0034f1f689df08d2ecce7e31&amp;s=b6d767d2f8ed5d21&amp;user=baidu&amp;fm=sc&amp;query=Do+not+know+how+to+serialize+a+BigInt&amp;qid=8e66a459000bedbc&amp;p1=7\" target=\"_blank\">百度快照</a></p><h3><a href=\"http://www.baidu.com/link?url=Yjsa3ZTQ01Au3D5B2kgnGfJkTmvDA6Okrj2Qxztu0RekMrduoUZHpg17KIo8puF3bfn0wr_eoP4VzDxssYuISMur2sxdUfa2UHHhbj8ckSLx-Fd5d3BFxRlSbfH-vzSHi4kb-se2diqOigufnfywA_\" target=\"_blank\"><em>do not know how to serialize a bigint</em>的中文翻译 - 百度翻译</a></h3>', 1, 1, 'Do not know how to serialize a BigInt', 6, 0, 0, 0, 1, 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 77 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_article_message
-- ----------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_menu
-- ----------------------------
INSERT INTO `tb_menu` VALUES (5, '2021-12-31 02:51:43', '/permission', 'permission', 'Layout', NULL, '权限配置', NULL, 0, 1, NULL, 0, NULL, 'users-cog', NULL, NULL, 30);
INSERT INTO `tb_menu` VALUES (6, '2021-12-31 06:09:33', 'user', 'user', 'personnelManagement/userManagement/index.vue', NULL, '用户管理', NULL, 0, 1, NULL, 0, NULL, 'user-cog', 5, NULL, 10);
INSERT INTO `tb_menu` VALUES (7, '2021-12-31 06:10:22', 'role', 'role', 'personnelManagement/roleManagement/index.vue', NULL, '角色管理', NULL, 0, 1, NULL, 0, NULL, 'user-shield', 5, NULL, 20);
INSERT INTO `tb_menu` VALUES (8, '2021-12-31 06:13:41', 'menu', 'menu', 'personnelManagement/menuManagement/index.vue', NULL, '菜单管理', NULL, 0, 1, NULL, 0, NULL, 'dice-six', 5, NULL, 30);
INSERT INTO `tb_menu` VALUES (9, '2021-12-31 06:14:45', '/meet', 'meet', 'Layout', NULL, '资料管理', NULL, 0, 1, NULL, 0, NULL, 'tasks', NULL, NULL, 40);
INSERT INTO `tb_menu` VALUES (10, '2021-12-31 06:17:19', 'meetlist', 'meetlist', 'vab/meet/index.vue', NULL, '资料列表', NULL, 0, 1, NULL, 0, NULL, 'list', 9, NULL, 10);
INSERT INTO `tb_menu` VALUES (11, '2021-12-31 06:23:12', 'meetcreate', 'meetcreate', 'vab/meet/components/create.vue', NULL, '创建资料', NULL, 0, 1, NULL, 0, NULL, 'plus', 9, NULL, 20);
INSERT INTO `tb_menu` VALUES (12, '2021-12-31 06:24:12', 'meetedit', 'meetedit', 'vab/meet/components/edit.vue', NULL, '资料编辑', NULL, 1, 1, NULL, 0, NULL, 'file-signature', 9, NULL, 30);
INSERT INTO `tb_menu` VALUES (13, '2021-12-31 06:24:49', 'meetdetils', 'meetdetils', 'vab/meet/components/details.vue', NULL, '资料详情', NULL, 1, 1, NULL, 0, NULL, 'money-check', 9, NULL, 40);
INSERT INTO `tb_menu` VALUES (14, '2021-12-31 06:26:21', '/personalCenter', 'personalCenter', 'Layout', NULL, '个人中心', NULL, 1, 1, NULL, 0, NULL, 'street-view', NULL, NULL, 80);
INSERT INTO `tb_menu` VALUES (15, '2021-12-31 06:28:50', 'personalInfo', 'personalInfo', 'personalCenter/index.vue', NULL, '基础信息', NULL, 1, 1, NULL, 0, NULL, 'street-view', 14, NULL, 0);
INSERT INTO `tb_menu` VALUES (16, '2021-12-31 06:30:50', '/material', 'material', 'Layout', NULL, '资料', NULL, 0, 1, NULL, 0, NULL, 'box-open', NULL, NULL, 20);
INSERT INTO `tb_menu` VALUES (17, '2021-12-31 06:31:50', 'studylist', 'studylist', 'vab/study/index.vue', NULL, '学习资料', NULL, 0, 1, NULL, 0, NULL, 'box-open', 16, NULL, 11);
INSERT INTO `tb_menu` VALUES (18, '2021-12-31 06:32:20', 'audiolist', 'audiolist', 'vab/audio/index.vue', NULL, '音频资料', NULL, 0, 1, NULL, 0, NULL, 'box-open', 16, NULL, 2);

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
) ENGINE = InnoDB AUTO_INCREMENT = 77 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_menu_role
-- ----------------------------
INSERT INTO `tb_menu_role` VALUES (6, '2021-12-31 07:59:48', 2, 16);
INSERT INTO `tb_menu_role` VALUES (7, '2021-12-31 07:59:48', 2, 18);
INSERT INTO `tb_menu_role` VALUES (8, '2021-12-31 07:59:48', 2, 17);
INSERT INTO `tb_menu_role` VALUES (9, '2021-12-31 07:59:48', 2, 5);
INSERT INTO `tb_menu_role` VALUES (10, '2021-12-31 07:59:48', 2, 6);
INSERT INTO `tb_menu_role` VALUES (11, '2021-12-31 07:59:48', 2, 7);
INSERT INTO `tb_menu_role` VALUES (12, '2021-12-31 07:59:48', 2, 8);
INSERT INTO `tb_menu_role` VALUES (13, '2021-12-31 07:59:48', 2, 9);
INSERT INTO `tb_menu_role` VALUES (14, '2021-12-31 07:59:48', 2, 10);
INSERT INTO `tb_menu_role` VALUES (15, '2021-12-31 07:59:48', 2, 11);
INSERT INTO `tb_menu_role` VALUES (16, '2021-12-31 07:59:48', 2, 12);
INSERT INTO `tb_menu_role` VALUES (17, '2021-12-31 07:59:48', 2, 13);
INSERT INTO `tb_menu_role` VALUES (18, '2021-12-31 07:59:48', 2, 14);
INSERT INTO `tb_menu_role` VALUES (19, '2021-12-31 07:59:48', 2, 15);
INSERT INTO `tb_menu_role` VALUES (20, '2021-12-31 07:59:48', 2, 16);
INSERT INTO `tb_menu_role` VALUES (21, '2021-12-31 07:59:48', 2, 18);
INSERT INTO `tb_menu_role` VALUES (22, '2021-12-31 07:59:48', 2, 17);
INSERT INTO `tb_menu_role` VALUES (23, '2021-12-31 07:59:48', 2, 5);
INSERT INTO `tb_menu_role` VALUES (24, '2021-12-31 07:59:48', 2, 6);
INSERT INTO `tb_menu_role` VALUES (25, '2021-12-31 07:59:48', 2, 7);
INSERT INTO `tb_menu_role` VALUES (26, '2021-12-31 07:59:48', 2, 8);
INSERT INTO `tb_menu_role` VALUES (27, '2021-12-31 07:59:48', 2, 9);
INSERT INTO `tb_menu_role` VALUES (28, '2021-12-31 07:59:48', 2, 10);
INSERT INTO `tb_menu_role` VALUES (29, '2021-12-31 07:59:48', 2, 11);
INSERT INTO `tb_menu_role` VALUES (30, '2021-12-31 07:59:48', 2, 12);
INSERT INTO `tb_menu_role` VALUES (31, '2021-12-31 07:59:48', 2, 13);
INSERT INTO `tb_menu_role` VALUES (32, '2021-12-31 07:59:48', 2, 14);
INSERT INTO `tb_menu_role` VALUES (33, '2021-12-31 07:59:48', 2, 15);
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
