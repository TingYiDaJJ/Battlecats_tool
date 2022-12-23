-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-12-20 16:23:10
-- 伺服器版本： 10.4.24-MariaDB
-- PHP 版本： 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `test`
--

-- --------------------------------------------------------

--
-- 資料表結構 `cat_status`
--

CREATE TABLE `cat_status` (
  `編號` text NOT NULL,
  `名字` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `HP` int(11) NOT NULL,
  `KB` int(11) NOT NULL,
  `攻擊頻率` float NOT NULL,
  `攻擊力` int(11) NOT NULL,
  `跑速` int(11) NOT NULL,
  `攻擊間隔` float NOT NULL,
  `DPS` int(11) NOT NULL,
  `射程` int(11) NOT NULL,
  `再生產` float NOT NULL,
  `Max level` int(11) NOT NULL,
  `範圍` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `召喚金額` int(11) NOT NULL,
  `特性` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `開放條件` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `聯組` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`聯組`))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 傾印資料表的資料 `cat_status`
--

INSERT INTO `cat_status` (`編號`, `名字`, `HP`, `KB`, `攻擊頻率`, `攻擊力`, `跑速`, `攻擊間隔`, `DPS`, `射程`, `再生產`, `Max level`, `範圍`, `召喚金額`, `特性`, `開放條件`, `聯組`) VALUES
('udi088_f', '跳繩貓', 5100, 3, 1.27, 1105, 10, 0.3, 872, 170, 2, 50, '單體攻擊', 360, '3%機率使出會心一擊', 'SP關卡「國士無雙」', '[{\"effect\":\"角色血量提升20%\", \"member\":[\"udi060_f\", \"udi088_f\", \"udi078_f\", \"udi126_f\", \"udi154_f\"]},{\"effect\":\"錢包上限提升10%\", \"member\":[\"udi088_f\", \"udi037_f\"]}]'),
('udi088_c', '雙人跳繩貓', 6800, 3, 1.27, 1275, 10, 0.3, 1007, 170, 2, 50, '單體攻擊', 360, '3%機率使出會心一擊', '跳繩貓 Lv10', '[]'),
('udi088_s', '雙人桿麵貓', 6800, 3, 1.27, 1275, 10, 0.3, 1007, 170, 2, 50, '單體攻擊', 360, '受到鐵屬性敵人攻擊的傷害減至1/4(1/5)、3%機率使出會心一擊', 'SP關卡「絕・國士無雙 - 絕擊的白漩渦 極難」、跳繩貓/雙人跳繩貓 Lv20', '[]'),
('udi091_f', '狂亂貓', 5220, 3, 1.23, 405, 20, 0.27, 328, 140, 2, 50, '單體攻擊', 75, '-', 'SP關卡「狂亂貓咪降臨」', '[{\"effect\":\"初期所持金提升1000円\", \"member\":[\"udi091_f\", \"udi092_f\", \"udi093_f\", \"udi094_f\", \"udi095_f\"]}]'),
('udi091_c', '狂亂健美貓', 5220, 3, 1.23, 405, 20, 0.27, 328, 140, 2, 50, '單體攻擊', 75, '-', '狂亂貓 Lv10', '[]'),
('udi091_s', '大狂亂摩西根貓', 6380, 3, 1.23, 492, 28, 0.27, 399, 140, 2, 50, '單體攻擊', 75, '-', 'SPステージ「大狂亂貓咪降臨」、狂亂貓/狂亂健美貓 Lv20', '[]'),
('udi092_f', '狂亂坦克貓', 15660, 1, 2.23, 102, 16, 0.27, 46, 110, 2, 50, '範圍攻擊', 150, '-', 'SP關卡「狂亂坦克貓降臨」', '[{\"effect\":\"初期所持金提升1000円\", \"member\":[\"udi091_f\", \"udi092_f\", \"udi093_f\", \"udi094_f\", \"udi095_f\"]}]'),
('udi092_c', '狂亂牆貓', 15660, 1, 2.23, 102, 16, 0.27, 46, 110, 2, 50, '範圍攻擊', 150, '-', '狂亂坦克貓 Lv10', '[]'),
('udi092_s', '大狂亂橡皮貓', 18995, 1, 2.23, 102, 20, 0.27, 46, 110, 2, 50, '範圍攻擊', 150, '-', 'SP關卡「大狂亂坦克貓降臨」、狂亂坦克貓/狂亂牆貓 Lv20', '[]'),
('udi093_f', '狂亂戰鬥貓', 10440, 3, 0.9, 1885, 12, 0.27, 2094, 150, 2, 50, '單體攻擊', 300, '對紅屬性的敵人傷害傷害1.5倍(1.8倍)、受到紅屬性的敵人傷害減少50%(60%)', 'SP關卡「狂亂戰鬥貓降臨」', '[{\"effect\":\"初期所持金提升1000円\", \"member\":[\"udi091_f\", \"udi092_f\", \"udi093_f\", \"udi094_f\", \"udi095_f\"]}]'),
('udi093_c', '狂亂勇者貓', 10440, 3, 0.9, 1885, 12, 0.27, 2094, 150, 2, 50, '單體攻擊', 300, '對紅屬性的敵人傷害傷害1.5倍(1.8倍)、受到紅屬性的敵人傷害減少50%(60%)', '狂亂戰鬥貓 Lv10', '[]'),
('udi093_s', '大狂亂暗黑貓', 12615, 3, 0.9, 3190, 12, 0.27, 3544, 150, 2, 50, '單體攻擊', 300, '對紅屬性的敵人傷害傷害1.5倍(1.8倍)、受到紅屬性的敵人傷害減少50%(60%)', 'SP關卡「大狂亂戰鬥貓降臨」、狂亂戰鬥貓/狂亂勇者貓 Lv20', '[]'),
('udi094_f', '狂亂噁心貓', 20880, 3, 4.17, 5220, 10, 0.2, 1253, 350, 29.13, 50, '單體攻擊', 600, '100%機率放出Lv3波動', 'SP關卡「狂亂噁心貓降臨」', '[{\"effect\":\"初期所持金提升1000円\", \"member\":[\"udi091_f\", \"udi092_f\", \"udi093_f\", \"udi094_f\", \"udi095_f\"]}]'),
('udi094_c', '狂亂美腿貓', 20880, 3, 4.17, 5220, 10, 0.2, 1253, 350, 29.13, 50, '單體攻擊', 600, '100%機率放出Lv3波動', '狂亂噁心貓 Lv10', '[{\"effect\":\"擊退距離提升【小】\", \"member\":[\"udi003_c\", \"udi094_c\"]}]'),
('udi094_s', '大狂亂筋肉美腿貓', 25375, 3, 4.17, 5220, 10, 0.2, 1253, 350, 29.13, 50, '單體攻擊', 600, '100%機率放出Lv4波動', 'SP關卡「大狂亂噁心貓降臨」、\r\n狂亂噁心貓/狂亂美腿貓 Lv20', '[]'),
('udi095_f', '狂亂牛貓', 26100, 5, 0.33, 682, 50, 0.2, 2046, 140, 4.53, 50, '範圍攻擊', 750, '-', 'SP關卡「狂亂牛貓降臨」', '[{\"effect\":\"初期所持金提升1000円\", \"member\":[\"udi091_f\", \"udi092_f\", \"udi093_f\", \"udi094_f\", \"udi095_f\"]}, {\"effect\":\"初期所持金提升500円\", \"member\":[\"udi004_f\", \"udi095_f\", \"udi148_f\"]}]'),
('udi095_c', '狂亂長頸鹿貓', 26100, 5, 0.33, 682, 50, 0.2, 2046, 140, 4.53, 50, '範圍攻擊', 750, '-', '狂亂牛貓 Lv10', '[]'),
('udi095_s', '大狂亂獅子貓', 26100, 5, 0.33, 682, 66, 0.2, 2046, 140, 4.53, 50, '範圍攻擊', 750, '-', 'SP關卡「大狂亂牛貓降臨」、\r\n狂亂牛貓/狂亂長頸鹿貓 Lv20', '[]'),
('udi096_f', '狂亂鳥貓', 15660, 4, 1.63, 6960, 10, 0.33, 4261, 205, 3.87, 50, '範圍攻擊', 975, '-', 'SP關卡「狂亂鳥貓降臨」', '[]'),
('udi096_c', '狂亂UFO貓', 15660, 4, 1.9, 8612, 10, 0.6, 4533, 205, 3.87, 50, '範圍攻擊', 975, '-', '狂亂鳥貓 Lv10', '[{\"effect\":\"超大傷害效果提升10%\", \"member\":[\"udi005_c\", \"udi096_c\"]}]'),
('udi096_s', '大狂亂天空之貓', 15660, 4, 1.97, 10497, 10, 0.67, 5337, 220, 3.87, 50, '範圍攻擊', 975, '-', 'SP關卡「大狂亂鳥貓降臨」、\r\n狂亂鳥貓/狂亂UFO貓 Lv20', '[]'),
('udi097_f', '狂亂魚貓', 36540, 3, 1.77, 9395, 13, 0.33, 5318, 150, 8.53, 50, '單體攻擊', 735, '對紅屬性的敵人傷害傷害1.5倍(1.8倍)、受到紅屬性的敵人傷害減少50%(60%)、2%機率使出會心一擊', 'SP關卡「狂亂魚貓降臨」', '[]'),
('udi097_c', '狂亂鯨貓', 36540, 3, 1.77, 9395, 13, 0.33, 5318, 150, 8.53, 50, '單體攻擊', 735, '對紅屬性的敵人傷害傷害1.5倍(1.8倍)、受到紅屬性的敵人傷害減少50%(60%)、2%機率使出會心一擊', '狂亂魚貓 Lv10', '[]'),
('udi097_s', '大狂亂島貓', 44370, 3, 1.77, 11425, 13, 0.33, 6467, 150, 8.53, 50, '單體攻擊', 735, '對紅屬性的敵人傷害傷害1.5倍(1.8倍)、受到紅屬性的敵人傷害減少50%(60%)、2%機率使出會心一擊', 'SP關卡「大狂亂魚貓降臨」、狂亂魚貓/狂亂鯨貓 Lv20', '[]'),
('udi098_f', '狂亂蜥蜴貓', 23490, 3, 4.23, 10400, 10, 0.27, 2466, 400, 17.2, 50, '單體攻擊', 1500, '-', 'SP關卡「狂亂蜥蜴貓降臨」', '[]'),
('udi098_c', '狂亂龍貓', 23490, 3, 4.23, 10400, 10, 0.27, 2466, 400, 17.2, 50, '單體攻擊', 1500, '-', '狂亂蜥蜴貓 Lv10', '[{\"effect\":\"擊退距離提升10%\", \"member\":[\"udi000_s\", \"udi098_c\"]}]'),
('udi098_s', '大狂亂龍王貓', 23490, 3, 4.23, 12760, 10, 0.27, 3014, 415, 17.2, 50, '單體攻擊', 1500, '-', 'SP關卡「大狂亂蜥蜴貓降臨」、狂亂蜥蜴貓/狂亂龍貓 Lv20', '[]'),
('udi099_f', '狂亂巨神貓', 52200, 1, 2.7, 17161, 11, 1.57, 6358, 150, 22.53, 50, '範圍攻擊', 1950, '10%機率放出Lv10波動', 'SP關卡「狂亂巨神貓降臨」', '[]'),
('udi099_c', '狂亂巨人貓', 52200, 1, 2.7, 17161, 11, 1.57, 6358, 150, 22.53, 50, '範圍攻擊', 1950, '10%機率放出Lv10波動', '狂亂巨神貓 Lv10', '[]'),
('udi099_s', '大狂亂賈拉米貓', 63800, 1, 2.7, 17167, 11, 1.57, 6358, 150, 22.53, 50, '範圍攻擊', 1950, '15%機率放出Lv10波動', 'SP關卡「大狂亂巨神貓降臨」、狂亂巨神貓/狂亂巨神貓 Lv20', '[]'),
('udi126_f', '機關人偶貓', 7565, 4, 2, 917, 24, 0.03, 459, 200, 10.73, 50, '單體攻擊', 495, '20%機率緩速鐵屬性的敵人2.67秒(3.2秒)', 'SP關卡「天罰」', '[{\"effect\":\"角色血量提升20%\", \"member\":[\"udi060_f\", \"udi088_f\", \"udi078_f\", \"udi126_f\", \"udi154_f\"]}]'),
('udi126_c', '人型師貓', 14347, 4, 2, 1087, 24, 0.03, 544, 200, 10.73, 50, '單體攻擊', 495, '20%機率緩速鐵屬性的敵人2.67秒(3.2秒)', '機關人偶貓 Lv10', '[]'),
('udi126_s', '人型師與鬼娃貓', 14347, 4, 2, 1087, 24, 0.03, 544, 225, 10.73, 50, '單體攻擊', 495, '30%機率緩速鐵屬性的敵人6.0秒(7.2秒)', 'SP關卡「絶・天罰」、機關人偶貓/人型師貓 Lv20', '[]'),
('udi127_f', '花盆貓', 2550, 5, 2.77, 340, 16, 0.4, 123, 240, 6.2, 50, '單體攻擊', 510, '20%機率暫停黑屬性的敵人2.0秒(2.4秒)', '拉門', '[]'),
('udi127_c', '風扇貓', 6035, 5, 2.83, 830, 16, 0.4, 294, 240, 6.2, 50, '單體攻擊', 510, '20%機率暫停黑屬性的敵人2.0秒(2.4秒)', '花盆貓 Lv10', '[]'),
('udi127_s', '炸彈貓', 6035, 5, 2.77, 832, 16, 0.4, 301, 240, 6.2, 50, '單體攻擊', 510, '100%機率暫停黑屬性的敵人2.0秒(2.4秒)', 'SP關卡「開眼花盆貓來襲！」、花盆貓/風扇貓 Lv20', '[]'),
('udi130_f', '狼與少女', 23800, 4, 3.57, 15300, 8, 2.27, 4290, 440, 161.53, 40, '範圍攻擊', 4950, '20%機率擊退全屬性(不含鋼鐵)的敵人', '傳奇關卡「越獄隧道 大逃亡」', '[]'),
('udi130_c', '小咪與少女', 23800, 4, 3.57, 15300, 8, 2.27, 4290, 440, 161.53, 40, '範圍攻擊', 4950, '20%機率擊退全屬性(不含鋼鐵)的敵人', '狼與少女 Lv10', '[]'),
('udi130_s', '覺醒的小咪與少女', 35700, 4, 3.57, 22950, 8, 2.27, 6435, 450, 161.53, 40, '範圍攻擊', 4950, '20%機率擊退全屬性(不含鋼鐵)的敵人、詛咒無效', '傳奇關卡「古代研究所」、狼與少女/小咪與少女 Lv30', '[]'),
('udi148_f', '搖滾貓 ', 7650, 1, 0.33, 545, 8, 0.17, 1535, 120, 4.2, 130, '單體攻擊', 315, '受到天屬性敵人攻擊的傷害減至1/4(1/5)', '轉蛋', '[{\"effect\":\"初期所持金提升500円\", \"member\":[\"udi004_f\", \"udi095_f\", \"udi148_f\"]}]'),
('udi148_c', '藝術家貓', 12750, 1, 0.33, 917, 8, 0.17, 1251, 120, 4.2, 130, '單體攻擊', 315, '受到天屬性敵人攻擊的傷害減至1/4(1/5)', '搖滾貓 Lv10', '[{\"effect\":\"很耐打效果提升10%\", \"member\":[\"udi060_c\", \"udi148_c\"]}]'),
('udi148_s', '拉麵王貓', 17850, 1, 0.33, 1020, 8, 0.17, 3060, 120, 4.2, 130, '單體攻擊', 315, '受到天屬性敵人攻擊的傷害減至1/4(1/5)', '搖滾貓/藝術家貓 Lv+合計30', '[]'),
('udi149_f', '人魚貓', 5440, 4, 3.47, 4590, 4, 0.83, 1324, 190, 4.2, 130, '單體攻擊', 540, '對浮屬性的敵人傷害傷害1.5倍(1.8倍)、受到浮屬性的敵人傷害減少50%(60%)、50%機率以1血存活一次', '轉蛋', '[]'),
('udi149_c', '女兵貓', 6460, 4, 3.47, 5610, 4, 0.83, 1618, 190, 4.2, 130, '單體攻擊', 540, '對浮屬性的敵人傷害傷害1.5倍(1.8倍)、受到浮屬性的敵人傷害減少50%(60%)、50%機率以1血存活一次', '人魚貓 Lv10', '[]'),
('udi149_s', '攝影師貓', 9690, 4, 3.5, 5610, 6, 0.87, 1603, 250, 4.2, 130, '範圍攻擊', 540, '對浮屬性的敵人傷害傷害1.5倍(1.8倍)、受到浮屬性的敵人傷害減少50%(60%)、50%機率以1血存活一次', '人魚貓/女兵貓 Lv+合計30', '[{\"effect\":\"初期貓咪砲充電20%\", \"member\":[\"udi149_s\", \"udi284_f\"]}]'),
('udi154_f', '呼拉圈貓', 9690, 3, 2.93, 1240, 9, 0.3, 423, 190, 10.87, 50, '單體攻擊', 660, '20%機率暫停鐵屬性的敵人2.0秒(2.4秒)', 'SP關卡「鐵子的部屋」', '[{\"effect\":\"角色血量提升20%\", \"member\":[\"udi060_f\", \"udi088_f\", \"udi078_f\", \"udi126_f\", \"udi154_f\"]}]'),
('udi154_c', '三層呼拉圈貓', 11390, 3, 2.93, 1410, 9, 0.3, 481, 190, 10.87, 50, '單體攻擊', 660, '20%機率暫停鐵屬性的敵人2.0秒(2.4秒)', '呼拉圈貓 Lv10', '[]'),
('udi154_s', '五層呼拉圈貓', 14790, 3, 2.87, 1410, 9, 0.3, 492, 215, 10.87, 50, '單體攻擊', 660, '40%機率暫停鐵屬性的敵人4.0秒(4.8秒)', 'SP關卡「絶・鐵子的部屋」、呼拉圈貓/三層呼拉圈貓 Lv20', '[]'),
('udi284_f', '貓咪特急', 10200, 1, 6.7, 17000, 60, 0.03, 2534, 140, 19.53, 50, '單體攻擊', 750, '擊退反擊、擊倒敵人獲得兩倍金錢', 'SP關卡「地獄門」', '[{\"effect\":\"初期貓咪砲充電20%\", \"member\":[\"udi149_s\", \"udi284_f\"]}]'),
('udi284_c', '貓咪超特急', 15300, 1, 6.7, 25500, 75, 0.03, 3806, 140, 19.53, 50, '單體攻擊', 750, '擊退反擊、擊倒敵人獲得兩倍金錢', '貓咪特急 Lv10', '[]'),
('udi284_s', '貓咪自強號特急', 20400, 1, 6.7, 29700, 85, 0.03, 4440, 140, 19.53, 50, '單體攻擊', 750, '擊退反擊、擊倒敵人獲得兩倍金錢', 'SP關卡「絶・地獄門」、貓咪特急/貓咪超特急 Lv20', '[]'),
('udi376_f', '貓咪探測器', 10200, 1, 3.03, 3400, 10, 0.67, 1121, 120, 4.2, 130, '單體攻擊', 300, '對星屬性的敵人傷害傷害1.5倍(1.8倍)、受到星屬性的敵人傷害減少50%(60%)、傳送無效', '轉蛋', '[]'),
('udi376_c', ' 智能BB貓MkⅡ', 13600, 1, 3.03, 4250, 10, 0.67, 1401, 120, 4.2, 130, '單體攻擊', 300, '對星屬性的敵人傷害傷害1.5倍(1.8倍)、受到星屬性的敵人傷害減少50%(60%)、傳送無效', '貓咪探測器 Lv10', '[]'),
('udi376_s', ' 衛星貓', 13600, 1, 3.03, 5525, 12, 0.67, 1821, 120, 4.2, 130, '單體攻擊', 270, '對星屬性的敵人傷害傷害1.5倍(1.8倍)、受到星屬性的敵人傷害減少50%(60%)、傳送無效、緩速無效、降攻無效', '貓咪探測器/智能BB貓MkⅡ Lv+合計30', '[]'),
('udi377_f', ' 擊劍貓', 10200, 1, 4.73, 10200, 10, 1.7, 2155, 320, 9.53, 120, '單體攻擊', 825, '100%機率破宇宙盾', '轉蛋', '[]'),
('udi377_c', ' 劍道貓', 15300, 1, 4.73, 15300, 10, 1.7, 3232, 320, 9.53, 120, '單體攻擊', 825, '100%機率破宇宙盾', '擊劍貓 Lv10', '[]'),
('udi377_s', ' 自由貓神', 17850, 1, 4.73, 17850, 10, 0.7, 3771, 320, 9.53, 120, '單體攻擊', 825, '100%機率破宇宙盾', '擊劍貓/劍道貓 Lv+合計30', '[]');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;