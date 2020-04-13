/*
Navicat SQLite Data Transfer

Source Server         : eSales2
Source Server Version : 31300
Source Host           : :0

Target Server Type    : SQLite
Target Server Version : 31300
File Encoding         : 65001

Date: 2018-08-23 16:13:52
*/

PRAGMA foreign_keys = OFF;

-- ----------------------------
-- Table structure for conf
-- ----------------------------
DROP TABLE IF EXISTS "main"."conf";
CREATE TABLE [conf](
    [id] INT PRIMARY KEY ASC UNIQUE, 
    [bloqueio_regra] BOOLEAN, 
    [login_automatico] BOOLEAN, 
    [assinatura_obrigatoria] BOOLEAN, 
    [controla_rotas] BOOLEAN, 
    [checkin_obrigatorio] BOOLEAN);
PRAGMA foreign_keys = ON;
