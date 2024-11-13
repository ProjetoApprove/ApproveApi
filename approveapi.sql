-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 13/11/2024 às 02:07
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `approveapi`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `alternativas`
--

CREATE TABLE `alternativas` (
  `alternativa_id` int(11) NOT NULL,
  `texto` varchar(255) NOT NULL,
  `correta` tinyint(1) NOT NULL,
  `pergunta_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `alternativas`
--

INSERT INTO `alternativas` (`alternativa_id`, `texto`, `correta`, `pergunta_id`) VALUES
(1, 'A) 406', 0, 1),
(2, 'B) 1334', 1, 1),
(3, 'C) 4002', 0, 1),
(4, 'D) 9338', 0, 1),
(5, 'E) 28014', 0, 1),
(6, 'A) 22', 0, 2),
(7, 'B) 25', 0, 2),
(8, 'C) 26', 1, 2),
(9, 'D) 29', 0, 2),
(10, 'E) 36', 0, 2),
(11, 'A) 1 e 2', 0, 3),
(12, 'B) 2 e 2', 0, 3),
(13, 'C) 3 e 1', 0, 3),
(14, 'D) 2 e 1', 0, 3),
(15, 'E) 3 e 3', 1, 3),
(16, 'A) 12', 0, 4),
(17, 'B) 14', 1, 4),
(18, 'C) 16', 0, 4),
(19, 'D) 32', 0, 4),
(20, 'E) 42', 0, 4),
(21, 'A) A', 0, 5),
(22, 'B) B ', 0, 5),
(23, 'C) C', 0, 5),
(24, 'D) D', 0, 5),
(25, 'E) E', 1, 5),
(26, 'A) 4,45kg', 1, 9),
(27, 'B) 8,90kg', 0, 9),
(28, 'C) 17,80g', 0, 9),
(29, 'D) 72,00g', 0, 9),
(30, 'E) 144,00g', 0, 9),
(31, 'A) CaO   ', 0, 6),
(32, 'B) CaC₂', 0, 6),
(33, 'C) CaCO₃', 1, 6),
(34, 'D) Ca(HCO₃)₂  ', 0, 6),
(35, 'E) Ca(OH)HCO₃ ', 0, 6),
(36, 'A) 0,7mg', 0, 7),
(37, 'B) 1,0mg', 0, 7),
(38, 'C) 3,8mg', 1, 7),
(39, 'D) 5,6mg', 0, 7),
(40, 'E) 8,5mg', 0, 7),
(41, 'A) 0,54g', 0, 8),
(42, 'B) 1,08g', 0, 8),
(43, 'C)1,91g', 0, 8),
(44, 'D)2,16g', 1, 8),
(45, 'E) 3,82g', 0, 8),
(46, 'A) 90', 0, 10),
(47, 'B) 210', 0, 10),
(48, 'C) 233,3', 0, 10),
(49, 'D) 330', 1, 10),
(50, 'E) 366,7', 0, 10),
(51, 'A) 10³ G', 0, 15),
(52, 'B) 10⁴ G', 0, 15),
(53, 'C) 10⁵ G', 0, 15),
(54, 'D) 10⁶ G', 0, 15),
(55, 'E) 10⁹ G', 1, 15),
(56, 'A) redução sofrida pelo oxigênio, que é uma reação exotérmica.   ', 0, 12),
(57, 'B) oxidação sofrida pelo magnésio, que é uma reação exotérmica.   ', 1, 12),
(58, 'C) redução sofrida pelo magnésio, que é uma reação endotérmica.   ', 0, 12),
(59, 'D) oxidação sofrida pelo hidrogênio, que é uma reação exotérmica.   ', 0, 12),
(60, 'E) redução sofrida pelo hidrogênio, que é uma reação endotérmica.   ', 0, 12),
(61, 'A) 6,2', 1, 14),
(62, 'B) 15,6', 0, 14),
(63, 'C) 70', 0, 14),
(64, 'D) 622,2', 0, 14),
(65, 'E) 1120', 0, 14),
(66, 'A) produção de fuligem pela fogueira.   ', 0, 11),
(67, 'B) liberação de calor intenso pela fogueira.   ', 0, 11),
(68, 'C) consumo de todo o oxigênio pelas pessoas.   ', 0, 11),
(69, 'D) geração de queimaduras pela emissão de faíscas da lenha.   ', 0, 11),
(70, 'E) geração de monóxido de carbono pela combustão incompleta da lenha.   ', 1, 11),
(71, 'A) 565 MJ.', 0, 13),
(72, 'B) 452 MJ.', 1, 13),
(73, 'C) 520 MJ.', 0, 13),
(74, 'D) 390 MJ.', 0, 13),
(75, 'E) 348 MJ.', 0, 13),
(76, 'A) formação de chuva ácida.   ', 1, 16),
(77, 'B) surgimento de ilha de calor.   ', 0, 16),
(78, 'C) redução da camada de ozônio.   ', 0, 16),
(79, 'D) ocorrência de inversão térmica.', 0, 16),
(80, 'E) emissão de gases de efeito estufa.', 0, 16),
(81, 'A) reduzir o calor irradiado pela Terra mediante a substituição da produção primária pela industrialização refrigerada.  ', 0, 17),
(82, 'B) promover a queima da biomassa vegetal, responsável pelo aumento do efeito estufa devido à produção de CH₄. ', 0, 17),
(83, 'C) reduzir o desmatamento, mantendo-se, assim, o potencial da vegetação em absorver o CO₂ da atmosfera.   ', 1, 17),
(84, 'D) aumentar a concentração atmosférica de H₂O, molécula capaz de absorver grande quantidade de calor.', 0, 17),
(85, 'E) remover moléculas orgânicas polares da atmosfera, diminuindo a capacidade delas de reter calor.   ', 0, 17),
(86, 'A) diluição das águas do rio pelo novo efluente lançado nele. ', 0, 18),
(87, 'B) precipitação do íon sulfato na presença do efluente da nova fábrica.   ', 0, 18),
(88, 'C) biodegradação do ácido sulfúrico em contato com o novo efluente descartado.  ', 0, 18),
(89, 'D) diminuição da acidez das águas do rio pelo efluente da fábrica de papel e celulose.   ', 1, 18),
(90, 'E) volatilização do ácido sulfúrico após contato com o novo efluente introduzido no rio.', 0, 18),
(91, 'A) precipitação ácida.  ', 1, 19),
(92, 'B) alteração do ciclo hidrológico.   ', 0, 19),
(93, 'C) alteração no ciclo de carbono.   ', 0, 19),
(94, 'D) intensificação do efeito estufa.', 0, 19),
(95, 'E) precipitação de íons metálicos tóxicos na superfície.', 0, 19),
(96, 'A) oxigênio', 0, 20),
(97, 'B) hidrogênio.   ', 0, 20),
(98, 'C) cloro.   ', 0, 20),
(99, 'D) dióxido de carbono.   ', 1, 20),
(100, 'E) monóxido de carbono.   ', 0, 20),
(101, 'A) fusão.   ', 0, 21),
(102, 'B) liquefação.', 0, 21),
(103, 'C) evaporação.   ', 1, 21),
(104, 'D) solidificação.   ', 0, 21),
(105, 'E) condensação.', 0, 21),
(106, 'A) Azeite.  ', 0, 22),
(107, 'B) Vinagre.    ', 0, 22),
(108, 'C) Detergente.    ', 1, 22),
(109, 'D) Água sanitária.  ', 0, 22),
(110, 'E) Sal de cozinha.    ', 0, 22),
(111, 'A) Decantação e coagulação.   ', 0, 23),
(112, 'B) Decantação e filtração.   ', 0, 23),
(113, 'C) Coagulação e desinfecção.  ', 1, 23),
(114, 'D) Floculação e filtração.   ', 0, 23),
(115, 'E) Filtração e fluoretação. ', 0, 23),
(116, 'A) os três tipos de água descritos na legislação são potáveis.   ', 1, 24),
(117, 'B) toda água engarrafada vendida no comércio é água mineral.   ', 0, 24),
(118, 'C) água purificada adicionada de sais é um produto natural encontrado em algumas fontes específicas.   ', 0, 24),
(119, 'D) a água potável de mesa é adequada para o consumo humano porque apresenta extensa flora bacteriana. ', 0, 24),
(120, 'E) a legislação brasileira reconhece que todos os tipos de água têm ação medicamentosa.   ', 0, 24),
(121, 'A) aumento da salinidade, em que a água do solo atinge uma concentração de sais maior que a das células das raízes das plantas, impedindo, assim, que a água seja absorvida.   ', 1, 25),
(122, 'B) aumento da salinidade, em que o solo atinge um nível muito baixo de água, e as plantas não têm força de sucção para absorver a água.   ', 0, 25),
(123, 'C) diminuição da salinidade, que atinge um nível em que as plantas não têm força de sucção, fazendo com que a água não seja absorvida', 0, 25),
(124, 'D) aumento da salinidade, que atinge um nível em que as plantas têm muita sudação, não tendo força de sucção para superá-la.   ', 0, 25),
(125, 'E) diminuição da salinidade, que atinge um nível em que as plantas ficam túrgidas e não têm força de sudação para superá-la.  ', 0, 25),
(126, 'A) Difração.  ', 0, 26),
(127, 'B) Reflexão.', 0, 26),
(128, 'C) Refração.  ', 0, 26),
(129, 'D) Interferência.  ', 1, 26),
(130, 'E) Efeito Doppler.  ', 0, 26),
(131, 'A) intensidade sonora do som de cada instrumento musical. ', 0, 27),
(132, 'B) potência sonora do som emitido pelos diferentes instrumentos musicais.', 0, 27),
(133, 'C) diferente velocidade de propagação do som emitido por cada instrumento musical.', 0, 27),
(134, 'D) timbre do som, que faz com que os formatos das ondas de cada instrumento sejam diferentes.', 1, 27),
(135, 'E) altura do som, que possui diferentes frequências para diferentes instrumentos musicais.', 0, 27),
(136, 'A) Amplitude.  ', 0, 28),
(137, 'B) Polarização.  ', 0, 28),
(138, 'C) Frequência.', 1, 28),
(139, 'D) Intensidade.', 0, 28),
(140, 'E) Velocidade.', 0, 28),
(141, 'A) difração.  ', 0, 29),
(142, 'B) dispersão.  ', 0, 29),
(143, 'C) reflexão.   ', 0, 29),
(144, 'D) refração.  ', 0, 29),
(145, 'E) polarização.', 1, 29),
(146, 'A) reflexão.', 0, 30),
(147, 'B) refração.', 0, 30),
(148, 'C) ressonância. ', 1, 30),
(149, 'D) superposição.', 0, 30),
(150, 'E) difração.  ', 0, 30),
(151, 'A) refletem partículas de luz (fótons), que atingem os olhos.  ', 1, 31),
(152, 'B) geram partículas de luz (fótons), convertidas pela fonte externa. ', 0, 31),
(153, 'C) são atingidos por partículas de luz (fótons), emitidas pelos olhos.', 0, 31),
(154, 'D) refletem partículas de luz (fótons), que se chocam com os fótons emitidos pelos olhos.', 0, 31),
(155, 'E) são atingidos pelas partículas de luz (fótons), emitidas pela fonte externa e pelos olhos.  ', 0, 31),
(156, 'A) refração da luz nas camadas de ar próximas do chão quente.   ', 1, 32),
(157, 'B) reflexão da luz ao incidir no solo quente.  ', 0, 32),
(158, 'C) reflexão difusa da luz na superfície rugosa.', 0, 32),
(159, 'D) dispersão da luz nas camadas de ar próximas do chão quente.', 0, 32),
(160, 'E) difração da luz nas camadas de ar próximas do chão quente.', 0, 32),
(161, 'A) ressonância.', 0, 33),
(162, 'B) refração.', 1, 33),
(163, 'C) difração. ', 0, 33),
(164, 'D) reflexão.', 0, 33),
(165, 'E) difusão.', 0, 33),
(166, 'A) A diminuição de sua energia.', 0, 34),
(167, 'B) O aumento de sua frequência.  ', 1, 34),
(168, 'C) A diminuição de sua amplitude.  ', 0, 34),
(169, 'D) O aumento de sua intensidade.  ', 0, 34),
(170, 'E) A diminuição de sua velocidade.  ', 0, 34),
(171, 'A) Mudou de sentido.   ', 0, 35),
(172, 'B) Sofreu reflexão total. ', 0, 35),
(173, 'C) Atingiu o valor do ângulo limite.  ', 0, 35),
(174, 'D) Direcionou-se para a superfície de separação.', 0, 35),
(175, 'E) Aproximou-se da normal à superfície de separação.  ', 1, 35),
(176, 'A) peso dos corpos.  ', 0, 36),
(177, 'B) resistência do ar.   ', 1, 36),
(178, 'C) massa dos corpos. ', 0, 36),
(179, 'D) densidade dos corpos.   ', 0, 36),
(180, 'E) aceleração da gravidade.', 0, 36),
(181, 'A) 0,7   ', 0, 37),
(182, 'B) 1,4', 0, 37),
(183, 'C) 1,5 ', 1, 37),
(184, 'D) 2 ', 0, 37),
(185, 'E) 3', 0, 37),
(186, 'A) 0,08 m/s²  ', 0, 38),
(187, 'B) 0,30 m/s² ', 1, 38),
(188, 'C) 1,10 m/s²  ', 0, 38),
(189, 'D) 1,60 m/s²   ', 0, 38),
(190, 'E) 3,90 m/s²', 0, 38),
(191, 'A) menor, pois a força normal com o solo é menor.  ', 0, 39),
(192, 'B) menor, pois a altura do salto seria maior. ', 0, 39),
(193, 'C) igual, pois o impulso aplicado pelo astronauta é o mesmo. ', 0, 39),
(194, 'D) maior, pois a aceleração da gravidade é seis vezes menor.  ', 1, 39),
(195, 'E) maior, pois na ausência de atmosfera não há resistência do ar. ', 0, 39),
(196, 'A) 0,05.   ', 0, 40),
(197, 'B) 11,1. ', 0, 40),
(198, 'C) 0,18.  ', 1, 40),
(199, 'D) 22,2. ', 0, 40),
(200, 'E) 0,50.  ', 0, 40),
(201, 'A) resistividade da conexão, que diminui devido à variação de temperatura do circuito.', 0, 45),
(202, 'B) corrente elétrica superior ao máximo que a tomada múltipla pode suportar.', 1, 45),
(203, 'C) resistência elétrica elevada na conexão simultânea de aparelhos eletrodomésticos.', 0, 45),
(204, 'D) tensão insuficiente para manter todos os aparelhos eletrodomésticos em funcionamento.', 0, 45),
(205, 'E) intensidade do campo elétrico elevada, que causa o rompimento da rigidez dielétrica da tomada múltipla.', 0, 45),
(206, 'A) 0,24. ', 0, 41),
(207, 'B) 1,80.  ', 0, 41),
(208, 'C) 1,92.  ', 0, 41),
(209, 'D) 12,48.  ', 1, 41),
(210, 'E) 14,40.', 0, 41),
(211, 'A) 1/6.', 0, 42),
(212, 'B) 5/6. ', 0, 42),
(213, 'C) 4.  ', 1, 42),
(214, 'D) 6.  ', 0, 42),
(215, 'E) 8.  ', 0, 42),
(216, 'A) oferece resistência nula ao movimento da quantidade líquida de carga através do corpo.', 0, 43),
(217, 'B) permite que uma quantidade de carga se desloque com facilidade através do corpo.', 1, 43),
(218, 'C) permite que uma quantidade de carga se desloque com dificuldade através do corpo.', 0, 43),
(219, 'D) reduz o deslocamento da quantidade líquida de carga em função do aumento da diferença potencial.', 0, 43),
(220, 'E) alterna a capacidade de deslocamento da quantidade de carga no corpo, facilitando ou dificultando o fenômeno.', 0, 43),
(221, 'A) 0,005 ', 0, 44),
(222, 'B) 0,125 ', 0, 44),
(223, 'C) 2,5   ', 0, 44),
(224, 'D) 5,0  ', 1, 44),
(225, 'E) 8,0', 0, 44),
(226, 'A)criação de uniões aduaneiras', 0, 46),
(227, 'B)difusão de padrões culturais.', 0, 46),
(228, 'C)melhoria na infraestrutura de transportes.', 1, 46),
(229, 'D)supressão das barreiras para comercialização.', 0, 46),
(230, 'E)organização de regras nas relações internacionais.', 0, 46),
(231, 'A) Eliminação das vantagens locacionais e ampliação da legislação laboral.', 0, 47),
(232, 'B) Limitação dos fluxos logísticos e fortalecimento de associações sindicais.', 0, 47),
(233, 'C) Diminuição dos investimentos industriais e desvalorização dos postos qualificados.', 0, 47),
(234, 'D) Concentração das áreas manufatureiras e redução da jornada semanal.', 0, 47),
(235, 'E) Automatização dos processos fabris e aumento dos níveis de desemprego.', 1, 47),
(236, 'A) monitoramento da produção.', 1, 48),
(237, 'B) valorização do preço da terra.', 0, 48),
(238, 'C) correção dos fatores climáticos.', 0, 48),
(239, 'D) divisão de tarefas na propriedade.', 0, 48),
(240, 'E) estabilização da fertilidade do solo.', 0, 48),
(241, 'A) linhas de montagem e formação de estoques.', 0, 49),
(242, 'B) empresas burocráticas e mão de obra barata.', 0, 49),
(243, 'C) controle estatal e infraestrutura consolidada.', 0, 49),
(244, 'D) organização em rede e tecnologia de informação.', 1, 49),
(245, 'E) gestão centralizada e protecionismo econômico.', 0, 49),
(246, 'A) Adoção de políticas protecionistas para a indústria cultural local', 0, 50),
(247, 'B) Expansão do consumo de produtos culturais ocidentais em todo o mundo', 1, 50),
(248, 'C) Crescimento do isolamento de culturas tradicionais', 0, 50),
(249, 'D) Redução das trocas culturais entre os países', 0, 50),
(250, 'E) Uniformidade total das culturas globais', 0, 50),
(251, 'A) A diminuição da pobreza extrema em todas as regiões do país', 0, 51),
(252, 'B) O aumento da mobilidade social das camadas mais pobres', 0, 51),
(253, 'C) A segregação espacial nas grandes cidades', 1, 51),
(254, 'D) A equidade de acesso a bens culturais e educacionais', 0, 51),
(255, 'E) A distribuição equitativa dos recursos públicos entre todos os cidadãos', 0, 51),
(256, 'A) Expansão do setor informal da economia', 0, 52),
(257, 'B) Políticas de redistribuição de renda, como programas de transferência direta', 1, 52),
(258, 'C) Adoção de um sistema tributário regressivo', 0, 52),
(259, 'D) Expansão do agronegócio para promover o desenvolvimento rural', 0, 52),
(260, 'E) Redução da participação do Estado na economia', 0, 52),
(261, 'A) O aumento da presença do Estado na economia', 0, 53),
(262, 'B) O fortalecimento dos movimentos sindicais', 0, 53),
(263, 'C) A concentração de riqueza nas mãos de grandes corporações globais', 1, 53),
(264, 'D) A ampla distribuição de renda entre as diferentes classes sociais', 0, 53),
(265, 'E) A aplicação de políticas de bem-estar social em larga escala', 0, 53),
(266, 'A) A elevada mobilidade social nas camadas mais baixas', 0, 54),
(267, 'B) Acesso universal e igualitário à educação de qualidade', 0, 54),
(268, 'C) O controle de recursos econômicos por uma pequena elite', 1, 54),
(269, 'D) A redução das desigualdades salariais entre homens e mulheres', 0, 54),
(270, 'E) O aumento da participação das minorias nas esferas de poder', 0, 54),
(271, 'A) Privatização de escolas públicas em áreas carentes', 0, 55),
(272, 'B) Criação de cotas para estudantes de escolas públicas nas universidades federais', 1, 55),
(273, 'C) Redução da carga tributária para os mais ricos', 0, 55),
(274, 'D) Fim dos programas de transferência de renda', 0, 55),
(275, 'E) Diminuição dos investimentos em saúde pública', 0, 55),
(276, 'a) Uniformidade cultural das sociedades modernas', 0, 56),
(277, 'b) Exclusão de práticas culturais tradicionais', 0, 56),
(278, 'c) Integração de diferentes culturas, promovendo a diversidade', 1, 56),
(279, 'd) Isolamento cultural de comunidades específicas', 0, 56),
(280, 'e) Rejeição à modernização das tradições culturais', 0, 56),
(281, 'a) A padronização das práticas culturais em um modelo global', 0, 57),
(282, 'b) O respeito às diferentes formas de expressão cultural', 1, 57),
(283, 'c) A preservação apenas das culturas tradicionais', 0, 57),
(284, 'd) A imposição de uma cultura dominante sobre as demais', 0, 57),
(285, 'e) O abandono de práticas culturais locais em prol da modernidade', 0, 57),
(286, 'a) Etnocentrismo', 0, 58),
(287, 'b) Multiculturalismo', 0, 58),
(288, 'c) Aculturação', 0, 58),
(289, 'd) Hibridismo cultural', 0, 58),
(290, 'e) Imperialismo cultural', 1, 58),
(291, 'a) A imposição de uma única cultura nacional', 0, 59),
(292, 'b) A uniformização das expressões culturais', 0, 59),
(293, 'c) O reconhecimento das diversas manifestações culturais presentes na sociedade', 1, 59),
(294, 'd) A exclusão das culturas estrangeiras', 0, 59),
(295, 'e) A padronização dos costumes e tradições locais', 0, 59),
(296, 'a) Incentivar o isolamento de grupos culturais minoritários', 0, 60),
(297, 'b) Impor valores e tradições de uma cultura dominante', 0, 60),
(298, 'c) Desenvolver políticas de inclusão e respeito às diferenças culturais', 1, 60),
(299, 'd) Padronizar as expressões culturais por meio da mídia', 0, 60),
(300, 'e) Rejeitar influências culturais estrangeiras', 0, 60),
(301, 'a) Apenas os direitos civis e políticos estão garantidos.', 0, 61),
(302, 'b) Todos os direitos são garantidos apenas para os cidadãos brasileiros natos.', 0, 61),
(303, 'c) Os direitos sociais, econômicos e culturais são considerados direitos fundamentais.', 1, 61),
(304, 'd) Os direitos são limitados a um grupo específico da população.', 0, 61),
(305, 'e) A Constituição não prevê direitos para as minorias.', 0, 61),
(306, 'a) Promover a apatia política entre os cidadãos.', 0, 62),
(307, 'b) Manter o status quo e a desigualdade social.', 0, 62),
(308, 'c) Organizar a luta por direitos e interesses coletivos.', 1, 62),
(309, 'd) Limitar o acesso à educação e à informação.', 0, 62),
(310, 'e) Incentivar a exclusão social de minorias.', 0, 62),
(311, 'a) Impede a mobilização popular.', 0, 63),
(312, 'b) Fortalece a participação da sociedade civil na defesa de direitos.', 1, 63),
(313, 'c) Mantém o controle estatal sobre a população.', 0, 63),
(314, 'd) Limita a liberdade de expressão e manifestação.', 0, 63),
(315, 'e) Promove a desigualdade social.', 0, 63),
(316, 'a) A promoção de ações individuais em detrimento do coletivo.', 0, 64),
(317, 'b) O uso da violência como única forma de reivindicação.', 0, 64),
(318, 'c) A busca pela participação política e pela efetivação de direitos.', 1, 64),
(319, 'd) A rejeição de práticas democráticas.', 0, 64),
(320, 'e) A exclusão de grupos sociais.', 0, 64),
(321, 'a) O aumento da desigualdade social.', 0, 65),
(322, 'b) O fortalecimento da voz de grupos marginalizados.', 1, 65),
(323, 'c) A diminuição da participação cidadã.', 0, 65),
(324, 'd) A imposição de uma cultura dominante.', 0, 65),
(325, 'e) A apatia política da população.', 0, 65),
(326, 'a) O estudo da ética e da moral.', 0, 66),
(327, 'b) A busca por um princípio unificador de todas as coisas.', 1, 66),
(328, 'c) A formulação de teorias políticas sobre a cidade-estado.', 0, 66),
(329, 'd) A reflexão sobre a existência de Deus.', 0, 66),
(330, 'e) A investigação da psicologia humana.', 0, 66),
(331, 'a) Contemplação da natureza.', 0, 67),
(332, 'b) Análise do comportamento coletivo.', 0, 67),
(333, 'c) Autoanálise e do autoconhecimento.', 1, 67),
(334, 'd) Estabelecimento de normas sociais.', 0, 67),
(335, 'e) Busca por riquezas e poder.', 0, 67),
(336, 'a) Realidades subjetivas que dependem da percepção individual.', 0, 68),
(337, 'b) Cópias imperfeitas do mundo físico.', 0, 68),
(338, 'c) Modelos perfeitos que constituem a verdadeira realidade.', 1, 68),
(339, 'd) Fenômenos que não têm relação com a moralidade.', 0, 68),
(340, 'e) Entidades criadas pelo discurso político.', 0, 68),
(341, 'a) Da prática da virtude e da razão.', 1, 69),
(342, 'b) Do prazer imediato.', 0, 69),
(343, 'c) Da riqueza e do poder.', 0, 69),
(344, 'd) Da conformidade às normas sociais.', 0, 69),
(345, 'e) Da busca pelo conhecimento abstrato.', 0, 69),
(346, 'a) A busca por prazeres efêmeros.', 0, 70),
(347, 'b) O desapego em relação às coisas externas.', 1, 70),
(348, 'c) A acumulação de bens materiais.', 0, 70),
(349, 'd) O reconhecimento social e prestígio.', 0, 70),
(350, 'e) A conformidade às tradições.', 0, 70),
(351, 'a) A experiência sensorial.', 0, 71),
(352, 'b) A razão pura, independente da fé.', 0, 71),
(353, 'c) A revelação divina e a fé.', 1, 71),
(354, 'd) O questionamento cético.', 0, 71),
(355, 'e) O empirismo e a observação.', 0, 71),
(356, 'a) A razão é superior à fé.', 0, 72),
(357, 'b) A fé deve ser abandonada em prol da razão.', 0, 72),
(358, 'c) A razão e a fé são caminhos distintos para a verdade.', 0, 72),
(359, 'd) A fé é cega e não deve ser questionada.', 0, 72),
(360, 'e) A razão pode conduzir à compreensão dos mistérios divinos.', 1, 72),
(361, 'a) A Cidade de Deus.', 0, 73),
(362, 'b) Suma Teológica.', 1, 73),
(363, 'c) Confissões.', 0, 73),
(364, 'd) A República.', 0, 73),
(365, 'e) Meditações.', 0, 73),
(366, 'a) A rejeição da lógica e da razão.', 0, 74),
(367, 'b) O uso de debates e dialéticas para resolver questões filosóficas e teológicas.', 1, 74),
(368, 'c) A defesa da superstição e da crença em dogmas.', 0, 74),
(369, 'd) A ênfase na filosofia prática, em detrimento da teórica.', 0, 74),
(370, 'e) A desconstrução da tradição cristã.', 0, 74),
(371, 'a) Entidades não devem ser multiplicadas além do necessário.', 1, 75),
(372, 'b) A moralidade é relativa e depende das circunstâncias.', 0, 75),
(373, 'c) A fé deve prevalecer sobre a razão.', 0, 75),
(374, 'd) A complexidade é sempre preferível a soluções simples.', 0, 75),
(375, 'e) O conhecimento deve ser baseado apenas na experiência sensorial.', 0, 75),
(376, 'a) A dúvida é o ponto de partida para o conhecimento.', 1, 76),
(377, 'b) A experiência sensorial é a base do conhecimento.', 0, 76),
(378, 'c) A existência de Deus é indiscutível.', 0, 76),
(379, 'd) A razão é a única fonte de conhecimento verdadeiro.', 0, 76),
(380, 'e) A realidade é ilusória e não pode ser conhecida.', 0, 76),
(381, 'a) Sentimentos subjetivos e pessoais.', 0, 77),
(382, 'b) Regras sociais e tradições.', 0, 77),
(383, 'c) Imperativos categóricos que valem universalmente.', 1, 77),
(384, 'd) Consequências das ações.', 0, 77),
(385, 'e) O que é mais vantajoso para a maioria.', 0, 77),
(386, 'a) Todo conhecimento é inato e independente da experiência.', 0, 78),
(387, 'b) A razão é superior à experiência sensorial.', 0, 78),
(388, 'c) O conhecimento se origina da experiência sensorial.', 1, 78),
(389, 'd) A experiência é irrelevante para a formação do conhecimento.', 0, 78),
(390, 'e) As ideias são reflexões da realidade externa.', 0, 78),
(391, 'a) Harmonia e cooperação.', 0, 79),
(392, 'b) Liberdade absoluta.', 0, 79),
(393, 'c) Conflito e insegurança.', 1, 79),
(394, 'd) Igualdade e paz.', 0, 79),
(395, 'e) Convivência pacífica.', 0, 79),
(396, 'a) Entidades distintas e separadas.', 0, 80),
(397, 'b) Sinônimos, representando uma única substância.', 1, 80),
(398, 'c) A fonte de todo o mal.', 0, 80),
(399, 'd) Conceitos abstratos sem relevância prática.', 0, 80),
(400, 'e) Uma criação da imaginação humana.', 0, 80),
(401, 'a) A essência precede a existência.', 0, 81),
(402, 'b) A liberdade é uma ilusão.', 0, 81),
(403, 'c) O ser humano é condenado à liberdade.', 1, 81),
(404, 'd) A moralidade é absoluta e universal.', 0, 81),
(405, 'e) A felicidade é alcançada por meio da razão.', 0, 81),
(406, 'a) O conhecimento é neutro e objetivo.', 0, 82),
(407, 'b) O poder é sempre repressivo e negativo.', 0, 82),
(408, 'c) O saber e o poder estão intrinsecamente ligados.', 1, 82),
(409, 'd) A moralidade deve ser absolutizada.', 0, 82),
(410, 'e) A história é linear e previsível.', 0, 82),
(411, 'a) Um sistema fixo de símbolos que representa a realidade.', 0, 83),
(412, 'b) A chave para a compreensão da essência das coisas.', 0, 83),
(413, 'c) Uma prática social que reflete formas de vida.', 1, 83),
(414, 'd) Irrelevante para a expressão do pensamento.', 0, 83),
(415, 'e) Apenas um meio de comunicação entre indivíduos.', 0, 83),
(416, 'a) Manter o status quo e a tradição.', 0, 84),
(417, 'b) Promover a compreensão mútua e a democracia.', 1, 84),
(418, 'c) Justificar a desigualdade social.', 0, 84),
(419, 'd) Reforçar a autoridade do Estado.', 0, 84),
(420, 'e) Criar um discurso científico neutro.', 0, 84),
(421, 'a) Defender a superioridade masculina nas relações sociais.', 0, 85),
(422, 'b) Promover a igualdade de gênero e a desconstrução de estereótipos.', 1, 85),
(423, 'c) Ignorar as diferenças entre os gêneros.', 0, 85),
(424, 'd) Manter a tradição patriarcal.', 0, 85),
(425, 'e) Reduzir a mulher a um papel subalterno na sociedade.', 0, 85),
(426, 'a) A recombinação de genes mutantes para gerar um organismo melhorado.', 0, 86),
(427, 'b) A transferência de um núcleo de uma célula somática para um óvulo enucleado.', 1, 86),
(428, 'c) A manipulação do DNA mitocondrial para controlar as características herdadas.', 0, 86),
(429, 'd) A seleção artificial de características desejadas em populações de animais.', 0, 86),
(430, 'e) A fusão de células germinativas para criar embriões geneticamente modificados.', 0, 86),
(431, 'a) Um medicamento que altera a sequência do DNA.', 0, 87),
(432, 'b) Células especializadas que atacam os genes defeituosos.', 0, 87),
(433, 'c) Cópias normais de genes em células com genes defeituosos.', 1, 87),
(434, 'd) Hormônios que regulam a expressão genética.', 0, 87),
(435, 'e) Células-tronco pluripotentes para substituir células doentes.', 0, 87),
(436, 'a) Seleção artificial de características desejadas ao longo de gerações.', 0, 88),
(437, 'b) Introdução de genes de interesse em seu genoma por técnicas de engenharia genética.', 1, 88),
(438, 'c) Exposição de organismos a radiações para provocar mutações benéficas.', 0, 88),
(439, 'd) Recombinação de DNA mitocondrial para produzir novas características.', 0, 88),
(440, 'e) Cruzamento entre espécies diferentes para obter híbridos.', 0, 88),
(441, 'a) A produção de insulina humana por bactérias transgênicas.', 1, 89),
(442, 'b) A utilização de antibióticos para combater infecções bacterianas.', 0, 89),
(443, 'c) A terapia de reposição hormonal em indivíduos com deficiência endócrina.', 0, 89),
(444, 'd) A seleção de embriões humanos em técnicas de fertilização in vitro.', 0, 89),
(445, 'e) O uso de vacinas para a prevenção de doenças infecciosas.', 0, 89),
(446, 'a) Possuem a capacidade de se transformar em qualquer tipo de célula especializada.', 1, 90),
(447, 'b) Já são geneticamente programadas para formar tecidos específicos.', 0, 90),
(448, 'c) São resistentes a todas as formas de doença genética.', 0, 90),
(449, 'd) Não podem ser manipuladas em laboratório.', 0, 90),
(450, 'e) São derivadas exclusivamente de embriões humanos.', 0, 90),
(451, 'a) Transportar oxigênio dos pulmões para os tecidos do corpo.', 1, 91),
(452, 'b) Combater infecções bacterianas.', 0, 91),
(453, 'c) Coagular o sangue durante uma lesão.', 0, 91),
(454, 'd) Produzir hormônios essenciais para o metabolismo.', 0, 91),
(455, 'e) Realizar a troca gasosa nos alvéolos pulmonares.', 0, 91),
(456, 'a) Fígado.', 0, 92),
(457, 'b) Estômago e intestino delgado.', 1, 92),
(458, 'c) Boca e esôfago.', 0, 92),
(459, 'd) Pâncreas e fígado.', 0, 92),
(460, 'e) Intestino grosso.', 0, 92),
(461, 'a) Correntes elétricas diretas entre as células.', 0, 93),
(462, 'b) Substâncias hormonais liberadas na corrente sanguínea.', 0, 93),
(463, 'c) Sinais elétricos transmitidos ao longo dos axônios.', 1, 93),
(464, 'd) Movimentos rápidos dos fluídos dentro das células nervosas.', 0, 93),
(465, 'e) Reações químicas nas membranas celulares.', 0, 93),
(466, 'a) Brônquios.', 0, 94),
(467, 'b) Alvéolos.', 1, 94),
(468, 'c) Traqueia.', 0, 94),
(469, 'd) Faringe.', 0, 94),
(470, 'e) Bronquíolos.', 0, 94),
(471, 'a) Filtrar o oxigênio no sangue para os tecidos.', 0, 95),
(472, 'b) Regular os níveis de glicose no corpo.', 0, 95),
(473, 'c) Filtrar o sangue para remover resíduos e produzir urina.', 1, 95),
(474, 'd) Secretar enzimas digestivas para a quebra de proteínas.', 0, 95),
(475, 'e) Produzir hormônios que estimulam o metabolismo basal.', 0, 95),
(476, 'a) A combustão de combustíveis fósseis.', 0, 96),
(477, 'b) A decomposição de matéria orgânica.', 0, 96),
(478, 'c) A fotossíntese realizada pelos produtores.', 1, 96),
(479, 'd) A respiração de animais e plantas.', 0, 96),
(480, 'e) A queima de biomassa.', 0, 96),
(481, 'a) Competição.', 0, 97),
(482, 'b) Mutualismo.', 1, 97),
(483, 'c) Comensalismo.', 0, 97),
(484, 'd) Parasitismo.', 0, 97),
(485, 'e) Predação.', 0, 97),
(486, 'a) Campos cultivados após colheita.', 0, 98),
(487, 'b) Florestas desmatadas.', 0, 98),
(488, 'c) Áreas rochosas recém-expostas.', 1, 98),
(489, 'd) Regiões onde há incêndios frequentes.', 0, 98),
(490, 'e) Rios represados.', 0, 98),
(491, 'a) Produzem energia a partir da luz solar.', 0, 99),
(492, 'b) Reciclam nutrientes ao degradar matéria orgânica.', 1, 99),
(493, 'c) Transferem energia diretamente para os consumidores primários.', 0, 99),
(494, 'd) Competem com os consumidores secundários por recursos alimentares.', 0, 99),
(495, 'e) Regulam o crescimento populacional dos produtores.', 0, 99),
(496, 'a) Aumento da oxigenação da água.', 0, 100),
(497, 'b) Redução da biodiversidade por aumento de nutrientes.', 1, 100),
(498, 'c) Controle do crescimento populacional de peixes.', 0, 100),
(499, 'd) Desaceleração do ciclo de nutrientes.', 0, 100),
(500, 'e) Melhoria na qualidade da água.', 0, 100),
(501, 'a) Mitocôndria.', 0, 101),
(502, 'b) Lisossomo.', 0, 101),
(503, 'c) Complexo golgiense.', 0, 101),
(504, 'd) Ribossomo.', 1, 101),
(505, 'e) Retículo endoplasmático liso.', 0, 101),
(506, 'a) Presença de proteínas imersas em uma camada de fosfolipídios.', 1, 102),
(507, 'b) Rigidez proporcionada pelo citoesqueleto.', 0, 102),
(508, 'c) Barreira estática formada apenas por proteínas.', 0, 102),
(509, 'd) Ausência de movimentação das moléculas lipídicas.', 0, 102),
(510, 'e) Associação entre glicídios e moléculas de ATP.', 0, 102),
(511, 'a) Digestão de proteínas.', 0, 103),
(512, 'b) Fotossíntese.', 0, 103),
(513, 'c) Respiração celular aeróbica.', 1, 103),
(514, 'd) Fermentação alcoólica.', 0, 103),
(515, 'e) Transporte ativo.', 0, 103),
(516, 'a) Produzir energia.', 0, 104),
(517, 'b) Realizar a digestão de materiais intracelulares e extracelulares.', 1, 104),
(518, 'c) Sintetizar proteínas para a exportação.', 0, 104),
(519, 'd) Armazenar substâncias lipídicas.', 0, 104),
(520, 'e) Participar da divisão celular.', 0, 104),
(521, 'a) Controlar as atividades metabólicas da célula através da produção de RNA e síntese proteica.', 1, 105),
(522, 'b) Armazenar lipídios e carboidratos para o metabolismo energético.', 0, 105),
(523, 'c) Controlar o transporte de substâncias para fora da célula.', 0, 105),
(524, 'd) Gerar energia para a célula através da produção de ATP.', 0, 105),
(525, 'e) Proteger a célula contra agentes patogênicos.', 0, 105),
(526, 'A) 600 g', 0, 116),
(527, 'B) 700 g', 0, 116),
(528, 'C) 750 g', 1, 116),
(529, 'D) 800 g', 0, 116),
(530, 'E) 900 g', 0, 116),
(531, 'A) 2 horas', 0, 117),
(532, 'B) 3 horas', 0, 117),
(533, 'C) 4 horas', 1, 117),
(534, 'D) 5 horas', 0, 117),
(535, 'E) 6 horas', 0, 117),
(536, 'A) R$ 600,00', 0, 118),
(537, 'B) R$ 800,00', 0, 118),
(538, 'C) R$ 900,00', 0, 118),
(539, 'D) R$ 1.000,00', 1, 118),
(540, 'E) R$ 1.200,00', 0, 118),
(541, 'A) 3,5 dias', 1, 119),
(542, 'B) 4 dias', 0, 119),
(543, 'C) 4,5 dias', 0, 119),
(544, 'D) 5 dias', 0, 119),
(545, 'E) 6 dias', 0, 119),
(546, 'A) 9 horas', 0, 120),
(547, 'B) 10 horas', 0, 120),
(548, 'C) 11 horas', 0, 120),
(549, 'D) 12 horas', 1, 120),
(550, 'E) 13 horas', 0, 120),
(551, 'A) R$ 1.000,00', 0, 111),
(552, 'B) R$ 1.100,00', 0, 111),
(553, 'C) R$ 1.200,00', 1, 111),
(554, 'D) R$ 1.300,00', 0, 111),
(555, 'E) R$ 1.400,00', 1, 111),
(556, 'A) 100', 0, 112),
(557, 'B) 150', 0, 112),
(558, 'C) 200', 1, 112),
(559, 'D) 250', 0, 112),
(560, 'E) 300', 0, 112),
(561, 'A) R$ 800,00', 0, 113),
(562, 'B) R$ 810,00', 1, 113),
(563, 'C) R$ 820,00', 0, 113),
(564, 'D) R$ 830,00', 0, 113),
(565, 'E) R$ 900,00', 0, 113),
(566, 'A) 48', 0, 114),
(567, 'B) 60', 0, 114),
(568, 'C) 72', 1, 114),
(569, 'D) 80', 0, 114),
(570, 'E) 84', 0, 114),
(571, 'A) R$ 180,00', 0, 115),
(572, 'B) R$ 190,00', 0, 115),
(573, 'C) R$ 200,00', 1, 115),
(574, 'D) R$ 210,00', 0, 115),
(575, 'E) R$ 220,00\r\n', 0, 115),
(576, 'A) R$ 80,00', 0, 121),
(577, 'B) R$ 90,00', 0, 121),
(578, 'C) R$ 100,00', 1, 121),
(579, 'D) R$ 110,00', 0, 121),
(580, 'E) R$ 120,00', 0, 121),
(581, 'A) 8', 0, 122),
(582, 'B) 9', 0, 122),
(583, 'C) 10', 1, 122),
(584, 'D) 11', 0, 122),
(585, 'E) 12', 0, 122),
(586, 'A) 10 km', 1, 123),
(587, 'B) 9 km', 0, 123),
(588, 'C) 8 km', 0, 123),
(589, 'D) 11 km', 0, 123),
(590, 'E) 12 km', 0, 123),
(591, 'A) 10', 0, 124),
(592, 'B) 11', 0, 124),
(593, 'C) 14', 0, 124),
(594, 'D) 13', 0, 124),
(595, 'E) 12', 1, 124),
(596, 'A) 2', 0, 125),
(597, 'B) 3', 1, 125),
(598, 'C) 4', 0, 125),
(599, 'D) 5', 0, 125),
(600, 'E) 6', 0, 125),
(601, 'A) 0', 1, 126),
(602, 'B) 1', 0, 126),
(603, 'C) -1', 0, 126),
(604, 'D) 2\r\n', 0, 126),
(605, 'E) -2', 0, 126),
(606, 'A) 6', 0, 127),
(607, 'B) 7', 0, 127),
(608, 'C) 8', 1, 127),
(609, 'D) 9', 0, 127),
(610, 'E) 10', 0, 127),
(611, 'A) 1 segundo', 0, 128),
(612, 'B) 2 segundos', 1, 128),
(613, 'C) 3 segundos', 0, 128),
(614, 'D) 4 segundos', 0, 128),
(615, 'E) 5 segundos', 0, 128),
(616, 'A) 3', 0, 129),
(617, 'B) 4', 0, 129),
(618, 'C) 5', 1, 129),
(619, 'D) 6', 0, 129),
(620, 'E) 7', 0, 129),
(621, 'A) 4', 0, 130),
(622, 'B) 5', 0, 130),
(623, 'C) 7', 0, 130),
(624, 'D) 6', 1, 130),
(625, 'E) 8', 0, 130),
(626, 'A) o uso de ferramentas de pedra lascada.', 0, 131),
(627, 'B) o desenvolvimento da agricultura e da domesticação de animais.\r\n', 1, 131),
(628, 'C) a invenção da escrita.', 0, 131),
(629, 'D) a caça e coleta como principal meio de subsistência', 0, 131),
(630, 'E) o nomadismo como forma de vida predominante.', 0, 131),
(631, 'A) ser a época em que se iniciou a Revolução Industrial.', 0, 132),
(632, 'B) marcar o começo da sedentarização humana.', 0, 132),
(633, 'C) ser caracterizado pela economia baseada na agricultura.', 0, 132),
(634, 'D) ser conhecido como a Idade da Pedra Lascada.', 1, 132),
(635, 'E) apresentar as primeiras formas de escrita.', 0, 132),
(636, 'A) não tinham qualquer forma de comunicação.', 0, 133),
(637, 'B) utilizavam a escrita para registrar acontecimentos.', 0, 133),
(638, 'C) registravam suas experiências e crenças por meio de desenhos.', 1, 133),
(639, 'D) possuíam uma sociedade organizada e com classes sociais bem definidas.', 0, 133),
(640, 'E) já usavam tecnologias avançadas para a produção de arte.', 0, 133),
(641, 'A) O início do uso de ferramentas de metal.', 1, 134),
(642, 'B) A adoção de práticas de caça e coleta mais sofisticadas.', 0, 134),
(643, 'C) A transição do nomadismo para o sedentarismo.', 0, 134),
(644, 'D) O desenvolvimento de grandes impérios organizados.', 0, 134),
(645, 'E) O surgimento da escrita para registrar histórias.', 1, 134),
(646, 'A) Construir abrigos permanentes.', 0, 135),
(647, 'B) Facilitar a caça e a coleta de alimentos.', 1, 135),
(648, 'C) Realizar rituais religiosos complexos.', 0, 135),
(649, 'D) Produzir arte rupestre detalhada.', 0, 135),
(650, 'E) Registrar informações por meio da escrita.', 0, 135),
(651, 'A) Pan-africanismo.', 0, 136),
(652, 'B) Conferência de Berlim.', 1, 136),
(653, 'C) Apartheid.', 0, 136),
(654, 'D) Neocolonialismo.', 0, 136),
(655, 'E) Descolonização.', 0, 136),
(656, 'A) foi limitado a poucas regiões da África, sem grandes impactos sociais.', 0, 137),
(657, 'B) proporcionou desenvolvimento econômico aos povos africanos.', 0, 137),
(658, 'C) contribuiu para a dispersão forçada de milhões de africanos para as Américas.', 1, 137),
(659, 'D) foi abolido na mesma época em que se iniciou o colonialismo na África.', 0, 137),
(660, 'E) não teve influência significativa nas culturas americanas', 0, 137),
(661, 'A) foi caracterizado pela igualdade de direitos entre brancos e negros.', 0, 138),
(662, 'B) resultou na criação de estados independentes para cada grupo étnico.', 0, 138),
(663, 'C) foi abolido com a eleição de Nelson Mandela como presidente.', 1, 138),
(664, 'D) promoveu a miscigenação entre os diferentes grupos raciais.', 0, 138),
(665, 'E) garantiu direitos políticos plenos a todos os cidadãos.', 0, 138),
(666, 'A) Incentivar a colonização europeia na África.', 0, 139),
(667, 'B) Lutar pela independência e unidade dos países africanos.', 1, 139),
(668, 'C) Promover a segregação racial entre africanos e europeus.', 0, 139),
(669, 'D) Defender o sistema de escravidão.', 0, 139),
(670, 'E) Criar colônias agrícolas nas Américas.', 0, 139),
(671, 'A) seu comércio de ouro e sal.', 1, 140),
(672, 'B) sua influência cultural na Europa.', 0, 140),
(673, 'C) sua tecnologia de navegação avançada.', 0, 140),
(674, 'D) sua arquitetura baseada em mármore.', 0, 140),
(675, 'E) suas conquistas militares na Ásia.', 0, 140),
(676, 'A) A guerra do Paraguai.', 0, 141),
(677, 'B) A insatisfação da elite rural e a pressão por mudanças políticas.', 1, 141),
(678, 'C) O crescimento do movimento abolicionista.', 0, 141),
(679, 'D) A independência do Brasil em relação a Portugal.', 0, 141),
(680, 'E) A implementação do sistema parlamentarista.', 0, 141),
(681, 'A) Garantia de ampla participação popular nas decisões políticas.', 0, 142),
(682, 'B) Instituição do voto universal e direto.', 0, 142),
(683, 'C) Estabelecimento do poder moderador, que concentrava poderes nas mãos do imperador.', 1, 142),
(684, 'D) Proclamação da República como forma de governo.', 0, 142),
(685, 'E) Abolição da escravidão.', 0, 142),
(686, 'A) A consolidação da República.', 0, 143),
(687, 'B) A guerra civil entre os estados.', 0, 143),
(688, 'C)O fortalecimento do comércio internacional.', 0, 143),
(689, 'D) A independência das colônias africanas.', 0, 143),
(690, 'E) A resistência dos movimentos separatistas nas províncias.', 1, 143),
(691, 'A) A instauração de uma república no Brasil.', 1, 144),
(692, 'B) O fortalecimento do poder do imperador.', 0, 144),
(693, 'C) O início da regência e a fragilização do poder central.', 1, 144),
(694, 'D) A unificação do Brasil com Portugal.', 0, 144),
(695, 'E) A implementação de reformas econômicas significativas.', 0, 144),
(696, 'A) A convocação de uma assembleia constituinte.', 0, 145),
(697, 'B) A centralização do poder e a dissolução da Assembleia Legislativa.', 1, 145),
(698, 'C) A promoção de eleições diretas para todos os cargos políticos.', 0, 145),
(699, 'D) O incentivo à participação popular nos assuntos do governo.', 0, 145),
(700, 'E) A implementação do federalismo como sistema de governo.', 0, 145),
(701, 'A) A forte oposição ao governo imperial.', 0, 146),
(702, 'B) A consolidação do sistema parlamentarista.', 0, 146),
(703, 'C) A centralização do poder nas mãos do imperador D. Pedro II', 1, 146),
(704, 'D) A proliferação de revoltas e guerras civis.', 0, 146),
(705, 'E) A promoção de uma política de descentralização administrativa.', 0, 146),
(706, 'A) Lei de Terras.', 0, 147),
(707, 'B) Lei Eusébio de Queirós.', 0, 147),
(708, 'C) Lei Áurea.', 1, 147),
(709, 'D) Lei do Ventre Livre.', 0, 147),
(710, 'E) Lei dos Sexagenários.', 0, 147),
(711, 'A) A descoberta de ouro e diamantes.', 0, 148),
(712, 'B) A diversificação da produção agrícola.', 0, 148),
(713, 'C) A imigração europeia.', 1, 148),
(714, 'D) O fortalecimento das capitanias hereditárias.', 0, 148),
(715, 'E) A política de proteção ao mercado interno.', 0, 148),
(716, 'A) Aliança entre os partidos liberal e conservador.', 1, 149),
(717, 'B) Exclusão de grupos opositores do governo.', 0, 149),
(718, 'C) Centralização do poder nas províncias.', 0, 149),
(719, 'D) Criação de uma república federal.', 0, 149),
(720, 'E) Abolição da escravidão.', 0, 149),
(721, 'A) A agricultura de subsistência.', 0, 150),
(722, 'B) A produção de café.', 1, 150),
(723, 'C) A extração de ouro', 0, 150),
(724, 'D) A pecuária extensiva.', 0, 150),
(725, 'E) A produção de algodão.', 0, 150),
(726, 'A) is, have, am, is, his, is', 0, 151),
(727, 'B) are, am, am, are, his, is', 0, 151),
(728, 'C) is, am, am, are, his, is', 1, 151),
(729, 'D) is, am, am, are, her, is', 0, 151),
(730, 'A) children/are/the/playing/in/the/park', 0, 152),
(731, 'B) the/children/are/playing/in/the/park', 1, 152),
(732, 'C) the/playing/are/children/the/in/park', 0, 152),
(733, 'D) park/in/the/playing/children/are/the', 0, 152),
(734, 'A) Is not Julie studying English.', 0, 153),
(735, 'B) The boys aren\'t playing soccer.', 1, 153),
(736, 'C) I not am correct about it.', 0, 153),
(737, 'D) I read every day.', 0, 153),
(738, 'A) I am your teacher?', 0, 154),
(739, 'B)  you are a good student?', 0, 154),
(740, 'C) they teenagers?', 0, 154),
(741, 'D) Are you a good friend?', 1, 154),
(742, 'A) What is you doing?', 1, 155),
(743, 'B) Mary and Ketty are sisters.', 0, 155),
(744, 'C) The dog is black.', 0, 155),
(745, 'D) I don\'t know who are you.', 0, 155),
(746, 'A) Hi, Good morning! How are you?', 0, 156),
(747, 'B) Good morning! How are you?', 0, 156),
(748, 'C) Hello, Good morning! How are you?', 1, 156),
(749, 'D) How are you? Good morning!\r\n', 0, 156),
(750, 'A) Qual é seu nome?', 0, 157),
(751, 'B) De onde você é?', 1, 157),
(752, 'C) Você está bem?', 0, 157),
(753, 'D) Vamos sair?', 0, 157),
(754, 'A) I am years old.', 1, 158),
(755, 'B) I have years old.', 0, 158),
(756, 'C) As duas formas estão corretas.', 0, 158),
(757, 'D) Nenhuma das duas está correta.', 0, 158),
(758, 'A) Monday (Segunda-feira)', 0, 159),
(759, 'B) Friday (Sexta-feira)', 0, 159),
(760, 'C ) Wednesday (Quarta-feira)', 0, 159),
(761, 'D) Thursday (Terça-feira)', 1, 159),
(762, 'A) four, eight, hundred, sixty', 0, 160),
(763, 'B) sixty, four, eight, hundred', 0, 160),
(764, 'C) four, eight, sixty, hundred', 1, 160),
(765, 'D) hundred, eight, sixty, four', 0, 160),
(766, 'A) emprego no setor imobiliário.', 0, 161),
(767, 'B) imóvel residencial para compra.', 1, 161),
(768, 'C) serviço de reparos em domicílio.', 0, 161),
(769, 'D) pessoa para trabalho doméstico.', 0, 161),
(770, 'A) os compostos químicos da morfina, produzidos por humanos, são manipulados no Missouri.', 0, 162),
(771, 'B) os ratos e os humanos possuem a mesma via metabólica para produção de morfina.', 1, 162),
(772, 'C) a produção de morfina em grande quantidade minimiza a dor em ratos e humanos.', 0, 162),
(773, 'D) os seres humanos têm uma predisposição genética para inibir a dor.', 0, 162),
(774, 'A) enfatizar a discriminação contra os jovens britânicos e suas famílias.', 0, 163),
(775, 'B) criticar as ações agressivas demonstradas nos tumultos pelos jovens.', 0, 163),
(776, 'C) estabelecer relação entre a falta de limites dos jovens e o excesso de amor.', 0, 163),
(777, 'D) reforçar a ideia de que os jovens precisam de amor, mas também de firmeza.\r\n', 1, 163),
(778, 'A) às empresas que levam vantagem para serem suas concorrentes.', 1, 164),
(779, 'B) aos sites da internet pelos quais o produto já pode ser conhecido.', 0, 164),
(780, 'C) aos nomes dos americanos que inventaram a suposta tecnologia.', 0, 164),
(781, 'D) às marcas mais importantes de microcomputadores do mercado.', 0, 164),
(782, 'A) lamenta por ter sido um viajante que encontrou muitas bifurcações.', 0, 165),
(783, 'B) viaja muito pouco e que essa escolha fez toda a diferença em sua vida.', 0, 165),
(784, 'C) festeja o fato de ter sido ousado na escolha que fez em sua vida.', 1, 165),
(785, 'D) percorre várias estradas durante as diferentes fases de sua vida.', 0, 165),
(786, 'A) “¿ Cómo está tu?”.', 0, 176),
(787, 'B) “¿ Cómo estás tu?”.', 0, 176),
(788, 'C) “¿ Cómo estás?”.', 0, 176),
(789, 'D) “¿ Cómo está usted?”.', 1, 176),
(790, 'A) Yo Brasil soy.', 0, 177),
(791, 'B) Me de Brasil.', 0, 177),
(792, 'C) Yo soy de Brasil.', 1, 177),
(793, 'D) Yo tengo Brasil.', 0, 177),
(794, 'A) ¿Cuántos años tiene?', 1, 178),
(795, 'B) ¿Cuántos años?', 0, 178),
(796, 'C) ¿Cómo te llamas?', 0, 178),
(797, 'D) ¿Años tiene?', 0, 178),
(798, 'A) ¡Hasta luego!', 0, 179),
(799, 'B) ¡Hasta mañana!', 1, 179),
(800, 'C) ¡Buen viaje!', 0, 179),
(801, 'D) ¡Tenga un buen día!', 0, 179),
(802, 'A) ocho, dos, mil, cuarenta', 0, 180),
(803, 'B) ocho, mil, cuarenta, dos', 0, 180),
(804, 'C) dos, ocho, cuarenta, mil', 1, 180),
(805, 'D) mil, ocho, dos, cuarenta', 0, 180),
(806, 'A) Yo, él, eso, nosotros', 1, 171),
(807, 'B) Él, eso, yo, nosotros', 0, 171),
(808, 'C) nosostros, yo, eso, él', 0, 171),
(809, 'D) eso, yo, él, nosotros\r\n', 0, 171),
(810, 'A) Com o ponto de interrogação só no final.', 0, 172),
(811, 'B) Com o ponto de interrogação só no começo.', 0, 172),
(812, 'C) Com o ponto de interrogação no começo (¿) e no final (?).', 1, 172),
(813, 'D) Com o ponto de interrogação no começo (?) e no final (¿).', 0, 172),
(814, 'A) \"Tú\" é usado para ocasiões informais e \"usted\" para ocasiões formais.', 1, 173),
(815, 'B) \"Tú\" é usado para ocasiões formais e \"usted\" para ocasiões informais.', 0, 173),
(816, 'C) Não existe diferença entre os dois.\r\n', 0, 173),
(817, 'D) Os dois são iguais', 0, 173),
(818, 'A) Bom dia! Estou bem!', 0, 174),
(819, 'B) Bom dia! Como você está?', 1, 174),
(820, 'C) Boa tarde! Como você está?', 0, 174),
(821, 'D) Bom dia! Estou bem, obrigada.', 0, 174),
(822, 'A) Ola, me llamo Julie! Mucho gusto!', 0, 175),
(823, 'B) Hola, me llamo Julie! Prazer em conhecê-lo!', 0, 175),
(824, 'C) Hi, me Julie! mucho gusto!', 0, 175),
(825, 'D) Hola, me llamo Julie! mucho gusto!', 1, 175),
(826, 'A) que o autor envolve-se metaforicamente em um manto escuro, onde se esconde para contemplar sua amada.', 0, 166),
(827, 'B) que o autor lembra o momento em que, contemplando sua amada, imaginando-a e idealizando-a, pensava em beijá-la.', 1, 166),
(828, 'C) que o autor lembra a forma e o lugar em que se casou com sua amada perto de uma lagoa escura.', 0, 166),
(829, 'D) que o autor lembra de uma viagem que fez com uma mulher que encontrou dentro de um hospital.', 0, 166),
(830, 'A) O marido de Teresa, Javier Limón, padeceu de ebola no início do ano, quando estava de férias na África.', 0, 167),
(831, 'B) O médico do hospital Becerreá fazia com que Teresa bebesse água durante sua estadia no seu leito.', 0, 167),
(832, 'C) O paciente Romero havia prometido fazer declarações à imprensa antes de sua total recuperação.', 0, 167),
(833, 'D) A enfermeira Teresa Romero, no auge da convalescença, sentia falta das sobremesas da sua mãe.', 1, 167),
(834, 'A) mas', 0, 168),
(835, 'B) mais', 0, 168),
(836, 'C) enquanto', 1, 168),
(837, 'D) portanto', 0, 168),
(838, 'A) peculiaridades.', 1, 169),
(839, 'B) raridades.', 0, 169),
(840, 'C) tópicos.', 0, 169),
(841, 'D) linhas.\r\n', 0, 169),
(842, 'A) anunciar alterações feitas nos verbetes de um dicionário digital.', 1, 170),
(843, 'B) listar os vocábulos mais utilizados atualmente na língua espanhola.', 0, 170),
(844, 'C) noticiar o surgimento de expressões usadas na oralidade popular.', 0, 170),
(845, 'D)  notificar sobre o crescente uso de estrangeirismos na língua espanhola.', 0, 170);

-- --------------------------------------------------------

--
-- Estrutura para tabela `correcoes`
--

CREATE TABLE `correcoes` (
  `correcao_id` int(11) NOT NULL,
  `pergunta_id` int(11) DEFAULT NULL,
  `texto` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `correcoes`
--

INSERT INTO `correcoes` (`correcao_id`, `pergunta_id`, `texto`) VALUES
(1, 1, 'Para determinar quantas Terras cabem dentro de Júpiter, vamos usar as informações fornecidas para calcular a relação entre os volumes dos planetas.\r\n\r\nCalcular o volume de Netuno em relação à Terra:\r\n\r\nDentro de Netuno cabem 58 Terras.\r\nCalcular o volume de Júpiter em relação a Netuno:\r\n\r\nDentro de Júpiter cabem 23 Netunos.\r\nPortanto, o volume de Júpiter em relação à Terra pode ser encontrado multiplicando o volume de Netuno pelo número de Netunos que cabem dentro de Júpiter:\r\n\r\nVolume de Júpiter= 23× Volume de Netuno\r\n\r\nVolume de Júpiter= 23× (58 x volume da Terra) Volume de Netuno\r\n\r\nCalcular o número de Terras que cabem dentro de Júpiter:\r\n\r\nVolume de Júpiter= 23 × 58 x Volume da Terra\r\n\r\n\r\nPortanto, 1334 Terras cabem dentro de Júpiter.\r\n\r\nA resposta correta é B) 1334.'),
(6, 2, 'Para resolver o problema, precisamos calcular a pontuação total desse time com base nos resultados informados.\r\n\r\nO time teve 5 vitórias, e cada vitória vale 3 pontos.\r\n\r\n5 vitórias X 3 pontos = 15pontos\r\n\r\nO time teve 7 empates, sendo 3 sem gols e 4 com gols.\r\n\r\nEmpates sem gols valem 1 ponto cada.\r\n\r\n3 empates sem gols × 1 ponto = 3 pontos\r\n\r\nEmpates com gols valem 2 pontos cada.\r\n\r\n4 empates com gols × 2 pontos = 8 pontos\r\n\r\n\r\nAgora, somamos todos os pontos:\r\n\r\n15 pontos + 3 pontos  + 8 pontos = 26 pontos\r\n\r\nPortanto, a pontuação total do time é 26.\r\n\r\nA resposta correta é a alternativa C) 26.'),
(7, 3, 'Pacote 1: 40 reais por show.\r\n\r\n40×7=280 reais.\r\n\r\nPacote 2: 80 reais fixos mais 10 reais por show.\r\n80\r\n\r\n80+(10×7)=80+70=150 reais.\r\n\r\nPacote 3: 60 reais para até 4 shows, mais 15 reais por show extra. João assistirá 3 shows a mais.\r\n\r\n60+(15×3)=60+45=105 reais.\r\n\r\nO pacote mais barato para João é o Pacote 3 (105 reais).\r\n\r\nPara Maria (4 shows):\r\nPacote 1: 40 reais por show.\r\n\r\n40×4=160 reais.\r\n\r\nPacote 2: 80 reais fixos mais 10 reais por show.\r\n\r\n80+(10×4)=80+40=120 reais.\r\n\r\nPacote 3: 60 reais para até 4 shows (como Maria assistirá exatamente 4 shows, não há custo adicional).\r\n\r\n60 reais.\r\n\r\nO pacote mais barato para Maria é o Pacote 3 (60 reais).\r\n\r\nConclusão:\r\nAs melhores opções para João e Maria são, respectivamente, os pacotes 3 e 3.\r\n\r\nResposta correta: E) 3 e 3.'),
(8, 4, 'Vamos calcular o número total de candidatos selecionados pelo clube de futebol.\r\n\r\nNúmero total de candidatos: 48.\r\n\r\nCandidatos com mais de 14 anos: \r\n\r\n​\r\n7/8 dos 48 candidatos.\r\n\r\n7\r\n8\r\n×\r\n48\r\n=\r\n42\r\n8\r\n7\r\n​\r\n7/8×48=42\r\nEntão, 42 candidatos foram pré-selecionados.\r\n\r\nPré-selecionados com estatura igual ou superior à mínima exigida: \r\n1\r\n2\r\n2\r\n1\r\n​\r\n1/2 dos 42 pré-selecionados.\r\n\r\n1\r\n2\r\n×\r\n42\r\n=\r\n21\r\n2\r\n1\r\n​\r\n1/2×42=21\r\nEntão, 21 candidatos atendem ao requisito de estatura.\r\n\r\nCandidatos com bom preparo físico: \r\n\r\n​\r\n2/3 dos 21 candidatos com estatura adequada.\r\n\r\n\r\n​\r\n2/3×21=14\r\nEntão, 14 candidatos foram selecionados.\r\n\r\nPortanto, a quantidade de candidatos selecionados pelo clube de futebol foi 14.\r\n\r\nResposta correta: B) 14.'),
(9, 5, 'Vamos calcular a quantidade total de massa da medicação ingerida para cada opção para determinar qual delas resulta na menor quantidade de medicamento.\r\n\r\nOpção A\r\nDosagem: 400 mg\r\nIntervalo: a cada 3 horas\r\nDuração: 1 semana (7 dias)\r\nNúmero total de doses por dia:\r\n\r\n\r\n​\r\n 24/3=8 doses por dia\r\nNúmero total de doses em 1 semana:\r\n\r\n\r\n8 doses/dia×7 dias=56 doses\r\nQuantidade total de medicação:\r\n\r\n56 doses×400 mg/dose=22,400 mg\r\n\r\nOpção B\r\nDosagem: 400 mg\r\nIntervalo: a cada 4 horas\r\nDuração: 10 dias\r\nNúmero total de doses por dia:\r\n\r\n\r\n​\r\n24/4 =6 doses por dia\r\nNúmero total de doses em 10 dias:\r\n\r\n\r\n6 doses/dia×10 dias=60 doses\r\nQuantidade total de medicação:\r\n\r\n\r\n60 doses×400 mg/dose=24,000 mg\r\n\r\nOpção C\r\nDosagem: 400 mg\r\nIntervalo: a cada 6 horas\r\nDuração: 2 semanas (14 dias)\r\nNúmero total de doses por dia:\r\n\r\n 26/6=4 doses por dia\r\nNúmero total de doses em 14 dias:\r\n\r\n4 doses/dia×14 dias=56 doses\r\nQuantidade total de medicação:\r\n\r\n56 doses×400 mg/dose=22,400 mg\r\nOpção D\r\nDosagem: 500 mg\r\nIntervalo: a cada 8 horas\r\nDuração: 10 dias\r\nNúmero total de doses por dia:\r\n\r\n\r\n 24/8=3 doses por dia\r\nNúmero total de doses em 10 dias:\r\n\r\n\r\n3 doses/dia×10 dias=30 doses\r\nQuantidade total de medicação:\r\n\r\n\r\n30 doses×500 mg/dose=15,000 mg\r\nOpção E\r\nDosagem: 500 mg\r\nIntervalo: a cada 12 horas\r\nDuração: 2 semanas (14 dias)\r\nNúmero total de doses por dia:\r\n\r\n\r\n​\r\n 24/12=2 doses por dia\r\nNúmero total de doses em 14 dias:\r\n\r\n\r\n2 doses/dia×14 dias=28 doses\r\nQuantidade total de medicação:\r\n\r\n\r\n28 doses×500 mg/dose=14,000 mg\r\nConclusão\r\nComparando as quantidades totais:\r\n\r\nOpção A: 22,400 mg\r\nOpção B: 24,000 mg\r\nOpção C: 22,400 mg\r\nOpção D: 15,000 mg\r\nOpção E: 14,000 mg\r\nPortanto, a opção que resulta na menor quantidade total de medicação é a Opção E.\r\n\r\nResposta correta: E) E.'),
(10, 6, 'A descrição menciona que a decomposição térmica resulta em um óxido sólido e um óxido gasoso. A principal substância nos sambaquis é o carbonato de cálcio (CaCO₃). Quando aquecido, o CaCO₃ se decompõe em óxido de cálcio (CaO, sólido) e gás carbônico (CO₂, gasoso). A reação é:\r\n\r\nCaCO₃(𝑠)→Cao(s)+CO₂(g)CaCO₃(s)→CaO(s)+CO₂​(g)\r\n\r\nO óxido sólido (CaO) reage com água para formar hidróxido de cálcio (Ca(OH)₂), e o gás carbônico (CO₂) se dissolve em água formando ácido carbônico (H₂CO₃).'),
(11, 7, 'Passo 1: Calcular a quantidade de C₂H₄\r\n\r\nA massa molar do C₂H₄ é\r\n12 × 2 + 1 × 4 = 28g/mol.\r\n\r\nA quantidade de moles de C₂H₄ em 1,0 mg de C₂H₄ é:\r\nn= 1/28 = 3,57 × 10⁻⁵mol\r\n\r\nPasso 2: Relacionar com a quantidade de KMnO₄\r\n\r\nPela estequiometria da equação, 3 mols de C₂H₄ reagem com 2 mols de KMnO₄. Assim, a quantidade de moles de KMnO₄ necessária será:\r\nn(KMnO4)= 2/3 × 3,57 × 10⁻⁵mol = 2,38 × 10⁻⁵mol\r\n\r\nPasso 3: Calcular a massa de KMnO₄\r\n\r\nA massa molar do KMnO₄ é 39 + 55 + 4 × 16 = 158g/mol \r\nPortanto, a massa de KMnO₄ necessária será: m = 2,38 × 10⁻⁵mol × 158g/mol = 3,76mg\r\n\r\nConclusão\r\nA massa mínima de KMnO₄ necessária é aproximadamente 3,8 mg'),
(12, 8, 'A reação não balanceada é:\r\n\r\nAg₂​S + Al → Al₂S₃ ​+ Ag\r\n\r\nPara balancear a reação, é necessário entender que 1 mol de Ag₂S produz 2 moles de Ag.\r\n\r\nA massa molar de Ag₂S é:2×108+32=248g/mol2×108+32=248 g/mol\r\n\r\nPortanto, de 2,48 g de Ag₂S: \r\n\r\nMoles de Ag2​S = 2,48/248 ≈ 0,01 mol \r\n\r\nIsso produz 2 × 0,01 = 0,02 mol de Ag, que equivale a:\r\n\r\nMassa de Ag= 0,02mol × 108g/mol = 2,16g'),
(13, 9, 'Reação de oxidação do ferro:2Fe(𝑠)+ 3/2 O₂(𝑔)+H₂O(𝑙)→Fe₂O₃⋅H₂O(𝑠)\r\n\r\nSabemos que cada prego de ferro tem uma massa de 5,6 g, e a questão pede para calcular a massa de ferrugem formada quando 50% do prego (ou seja, 2,8 g de ferro) se oxida.\r\n\r\nPasso 1: Calcular a quantidade de ferro oxidado\r\n\r\nA massa molar do ferro (Fe) é 56 g/mol. \r\nA quantidade de moles de ferro em 2,8 g é:n(Fe)= 2,8 / 56 = 0,05mol\r\n\r\nPasso 2: Relacionar a quantidade de ferro com a ferrugem formada\r\n\r\nPela estequiometria da equação, 2 mols de Fe produzem 1 mol deFe₂O₃⋅H₂O\r\n\r\nAssim, a quantidade de Fe2O3⋅H2OFe2​O3​⋅H2​O formada a partir de 0,05 mol de Fe será: n(Fe₂O₃⋅H₂O) = 0,05mol/2 = 0,025mol\r\n\r\nPasso 3: Calcular a massa de ferrugem (Fe2O3⋅H2OFe2​O3​⋅H2​O)\r\n\r\nA massa molar da ferrugemFe₂O₃⋅H₂O é:\r\n\r\nMassa molar=(2×56)+(3×16)+(18)=178g/mol\r\n\r\nA massa de ferrugem formada será:m(Fe₂O₃⋅H₂O)=0,025mol×178g/mol=4,45g'),
(14, 10, 'Considerando que o carvão antracito tem 90% de carbono, para 100 g de carvão, 90 g são carbono.\r\n\r\nA reação de combustão completa do carbono é: C+O₂→CO₂\r\n\r\nPara 12 g de C, formam-se 44 g de CO₂ (massa molar). Assim, para 90 g de C: (90/12) × 44g  = 330\r\n\r\nPortanto, a massa de gás liberada é de aproximadamente 330 g.'),
(15, 11, 'Quando uma fogueira queima em um ambiente fechado, a combustão pode ser incompleta, levando à produção de monóxido de carbono (CO). Este gás é tóxico e pode causar asfixia, mesmo que não haja incêndio.'),
(16, 12, 'Na reação descrita, o magnésio é oxidado, produzindo hidróxido de magnésio e hidrogênio. Essa reação é exotérmica, pois libera calor (350 kJ), proporcionando aquecimento.'),
(17, 13, 'Coletando os dados, temos:\r\nDensidade do etanol: 0,8 g/cm³\r\nMassa molar do etanol: 46 g/mol\r\nCalor de combustão do etanol: -1.300 kJ/mol\r\nRendimento do carro: 20 km/L\r\nDistância a percorrer: 400 km\r\n\r\nCálculo:\r\n\r\nQuantidade de etanol necessária:\r\nConsumo de etanol= 400/20=20\r\n\r\nMassa de etanol necessária: \r\nMassa=Densidade × Volume= 0,8g/cm3 × 20L ×1000cm3 / L= 16000g = 16kg\r\n\r\nMoles de etanol:\r\nMoles=16000/46 ≈ 347.83\r\n\r\nEnergia consumida:\r\nEnergia= Moles × Calor de combustão= 347.83 × 1300 ≈ 452,184MJ'),
(18, 14, 'Coletando os dados, temos:\r\n\r\nEquação da oxidação da glicose: \r\nC6​H12​O6 ​+ 6O2​ → 6CO2​ + 6H2​OΔH = −2800kJ\r\n\r\nMassa molar da glicose: \r\nC:12×6 = 72g\r\nH:1×12=12g\r\nO:16×6=96g\r\nTotal=180g/mol\r\n\r\nCálculos da energia liberada por grama de glicose:\r\n\r\nEnergia por grama=2800/180 ​≈ 15.56kJ/g\r\nEnergia para 1 g≈ 15.56kJ ≈ 15.6kJ'),
(19, 15, 'Coletando os dados, nós temos:\r\n\r\nCalor liberado na fissão do ²³⁵U:8 × 10¹⁰J/g\r\nCalor liberado na combustão da gasolina:5×10⁴J/g\r\n\r\nCálculos:\r\n\r\nEnergia liberada pela fissão de 1 kg de ²³⁵U:\r\n\r\nEnergia = 8×10¹⁰j/g × 1000g = 8×10¹³J\r\n\r\nMassa de gasolina necessária para obter essa energia:\r\n\r\nMassa = 8×10¹³/5×10⁴ = 1.6×10⁹g = 1.6×10⁶kg'),
(20, 16, 'As reações químicas apresentadas mostram que o dióxido de enxofre (SO₂) se transforma em trióxido de enxofre (SO₃) na presença de oxigênio e, em seguida, reage com a água para formar ácido sulfúrico (H₂SO₄). \r\n\r\nEsse ácido é um dos principais componentes da chuva ácida, que pode causar danos a ecossistemas aquáticos e terrestres.'),
(21, 17, 'A redução do desmatamento é essencial para manter a capacidade das florestas e outras vegetações de absorver CO₂, um dos principais gases de efeito estufa.\r\n\r\nO desmatamento não só diminui essa capacidade, como também libera CO₂ na atmosfera, exacerbando o problema do efeito estufa.'),
(22, 18, 'O hidróxido de sódio (NaOH) e o carbonato de sódio (Na₂CO₃) são substâncias básicas que, quando lançadas no rio, neutralizam o ácido sulfúrico (H₂SO₄), resultando em uma diminuição da acidez da água. \r\n\r\nEssa mudança nas condições químicas permite que a vida aquática retorne ao ecossistema.'),
(23, 19, 'Regiões urbanas e industriais, devido à emissão de poluentes como o SO₂, estão propensas à ocorrência de chuvas ácidas. \r\n\r\nEsse fenômeno está diretamente ligado à presença de poluentes que se transformam em ácidos na atmosfera e são precipitados na forma de chuva.'),
(24, 20, '\r\nQuando o ácido reage com o carbonato de cálcio (CaCO₃) presente no mármore, ocorre a seguinte reação:\r\n\r\nCaCO₃ = 2HCl -> CaCl₂​ + H₂​O + CO₂​\r\n\r\nA efervescência é causada pela liberação de gás dióxido de carbono (CO₂) durante essa reação.'),
(25, 21, 'O texto descreve um processo em que a água absorve calor do sol e das condições ao redor, fazendo com que algumas moléculas tenham energia suficiente para subir à atmosfera. Isso se refere à evaporação, que é a mudança de fase da água do estado líquido para o estado gasoso.'),
(26, 22, 'O detergente reduz a tensão superficial da água, permitindo que o óleo se disperse em gotículas menores, assim como os dispersantes fazem em derramamentos de petróleo. Os dispersantes atuam de maneira semelhante ao detergente, que tem propriedades emulsificantes.'),
(27, 23, 'A coagulação é um processo químico que envolve a adição de substâncias químicas para aglutinar partículas suspensas, enquanto a desinfecção é uma etapa que envolve processos químicos (como a adição de cloro) para eliminar microrganismos. A decantação e a filtração são processos físicos.'),
(28, 24, 'Tanto a água mineral quanto a água potável de mesa e a água purificada adicionada de sais são consideradas potáveis, pois são adequadas para o consumo humano. A água mineral é reconhecida por suas propriedades especiais, enquanto as outras são tratadas para garantir a segurança do consumo.'),
(29, 25, ' A seca fisiológica ocorre quando a concentração de sais na água do solo é maior do que a concentração de água nas células das raízes das plantas. Isso impede a absorção de água, pois a osmose não consegue ocorrer na direção necessária, levando à desidratação das plantas.'),
(30, 26, 'O cancelamento de ruído ativo funciona gerando um sinal sonoro que é a fase oposta ao ruído externo. Quando esses dois sinais (o ruído e o som gerado) se encontram, eles interferem entre si, resultando em uma diminuição do som percebido. Esse fenômeno é conhecido como interferência destrutiva.'),
(31, 27, 'O timbre é a característica que permite distinguir sons de diferentes fontes, mesmo que eles estejam emitindo a mesma nota. Isso ocorre devido às diferentes formas de onda produzidas por cada instrumento, que dependem de sua construção e do modo como o som é produzido.'),
(32, 28, ' A ressonância ocorre quando o circuito receptor sintoniza a frequência da onda de rádio que está sendo recebida. Para que o circuito ressoe com a onda, a frequência da onda deve ser igual à frequência natural do circuito.'),
(33, 29, 'Os óculos 3D utilizam lentes polarizadas que permitem que apenas ondas luminosas com certas direções de vibração passem. Isso cria uma imagem tridimensional, pois cada olho recebe uma imagem ligeiramente diferente, permitindo a percepção de profundidade.'),
(34, 30, 'A ressonância ocorre quando a frequência das ondas do micro-ondas corresponde à frequência natural de oscilação das moléculas de água. Isso resulta em um aumento da energia cinética das moléculas, que se traduz em calor, cozinhando assim os alimentos.\r\n\r\n'),
(35, 31, 'Para que um objeto seja visto, ele precisa refletir a luz que incide sobre ele. As crianças que tapam os olhos acreditam que não podem ser vistas, mas a visão depende da luz refletida pelos objetos e atingindo os olhos do observador.'),
(36, 32, 'As miragens são causadas pela refração da luz em camadas de ar com diferentes temperaturas. Quando o ar perto do solo está mais quente, a luz é desviada, fazendo com que objetos distantes pareçam distorcidos ou que haja água onde não há.'),
(37, 33, ' A Fata Morgana é um tipo de miragem complexa que ocorre devido à refração da luz através de diferentes camadas de ar, especialmente quando há uma inversão térmica. Isso faz com que a luz se curve, criando imagens distorcidas de objetos distantes.'),
(38, 34, 'O aumento da frequência do laser permite que os pontos de dados (bits) sejam gravados em áreas menores no disco. Com isso, mais informações podem ser armazenadas, aumentando a capacidade dos CDs, DVDs e Blu-rays.'),
(39, 35, 'Quando o índice de refração do meio (1,9) é maior do que o esperado (1,4), isso indica que a luz está passando de um meio menos denso para um meio mais denso. Em geral, quando a luz entra em um meio mais denso, ela se aproxima da normal à superfície de separação. Portanto, ao se observar um índice de refração maior que 1,4, isso confirma que o raio de luz se aproxima da normal.'),
(40, 36, 'A resistência do ar é a força que atua sobre os objetos em movimento, especialmente quando são leves e têm grande área de superfície, como uma rolha ou uma folha de papel esticada. A resistência do ar é proporcional à velocidade do objeto e à sua área frontal. No caso da folha de papel, quando amassada, sua área de superfície reduz, diminuindo a resistência do ar, permitindo que ela caia mais rapidamente. Portanto, a ideia de que corpos mais pesados caem mais rapidamente é verdadeira apenas na ausência de resistência do ar.'),
(41, 37, 'Coletando os dados e realizando os cálculos, nós temos:\r\n\r\nPrimeiro trecho:\r\n\r\nDistância = 80 km, Velocidade = 80 km/h\r\nTempo = Distância / Velocidade = 80 km / 80 km/h = 1 hora.\r\n\r\nSegundo trecho:\r\n\r\nDistância = 60 km, Velocidade = 120 km/h\r\nTempo = Distância / Velocidade = 60 km / 120 km/h = 0,5 horas.\r\n\r\nTempo total = 1 hora + 0,5 horas = 1,5 horas.'),
(42, 38, 'Coletando os dados e realizando os cálculos, nós temos:\r\n\r\nFrenagem anterior:\r\n\r\nDistância = 400 m, Velocidade = 72 km/h = 20 m/s (convertendo para m/s).\r\n\r\nUsando a fórmula: v² = u² +2as, onde:\r\n\r\nv = 0 (parada)\r\nu=20m/s\r\ns = 400m\r\n\r\ntemos:\r\n\r\n0 = 20² + 2a(-400) \r\n400 = 800a\r\n400/800 = a\r\n0,5m/s² = a\r\n\r\nFrenagem atual:\r\n\r\nDistância = 250m\r\n\r\n0=20²+2a(-250)\r\n400 = 500a\r\n400/500 = a\r\n0,8m/s² = a\r\n\r\nDiferença entre as acelerações:\r\n\r\n0,8 - 0,5 = 0,3 m/s²'),
(43, 39, 'O alcance de um salto oblíquo depende da aceleração da gravidade. Na Lua, a aceleração da gravidade é aproximadamente 1/6 da da Terra, o que significa que os objetos demoram mais para voltar ao chão. Portanto, um salto na Lua terá um alcance maior devido à menor força gravitacional atuando sobre o corpo.'),
(44, 40, '\r\nColetando os dados e realizando os cálculos, nós temos:\r\n\r\nDistância entre os sensores: 2 metros\r\nVelocidade máxima permitida: 40 km/h\r\n\r\nConversão da velocidade:\r\n\r\n40km/h = (40x1000)/3600 ≈ 11,11 m/s\r\n\r\nCálculo do tempo para percorrer 2 metros:\r\n\r\nTempo = Distância/Velocidade, logo: 2/11,11 ≈ 0,18s'),
(45, 41, 'Dados:\r\n\r\nLâmpada incandescente: 60 W\r\nLâmpada de LED: 8 W\r\nTempo de uso: 8 horas por dia\r\nPeríodo: 30 dias\r\n\r\nCálculos da redução de consumo:\r\n\r\nConsumo da lâmpada incandescente:\r\nConsumo mensal=60W×8h/dia×30dias=14400Wh=14,4kWh\r\n\r\nConsumo da lâmpada de LED:\r\nConsumo mensal=8W×8h/dia×30dias=1920Wh=1,92kWh\r\n\r\nRedução do consumo:\r\nRedução=14,4kWh−1,92kWh=12,48kWh'),
(46, 42, 'Coletando os dados nós temos:\r\n\r\nCarregador: 5,0 V / 1000 mA (ou 1 A)\r\nBateria: 1,5 V / 4000 mAh (ou 4 Ah)\r\n\r\nCálculo do tempo de recarga:\r\n\r\nCapacidade da bateria em Ah:Capacidade=4Ah\r\n\r\nCorrente do carregador:I = 1A\r\n\r\nTempo total de recarga:= Tempo = Capacidade/Corrente = 4Ah/1A = 4horas'),
(47, 43, 'O corpo humano, embora tenha resistência, pode conduzir eletricidade, especialmente quando a umidade do ar é baixa. A facilidade com que a carga se desloca pelo corpo é a razão pela qual as pessoas sentem choques elétricos em certas condições.'),
(48, 44, 'Coletando os dados, temos:\r\n\r\nDistância percorrida: 110 km\r\nDesempenho do carro: 5,0 km/kWh\r\n\r\nCálculo da energia consumida:\r\n\r\nEnergia consumida:\r\nEnergia = Distância/Desempenho = 110/5,0 = 22\r\n\r\nCálculo da potência do carregador:\r\nTensão: 220 V\r\nCorrente: 20 A\r\nPotência: P=V×I=220V×20A=4400W=4,4kW\r\n\r\nCálculo do tempo necessário para recarregar:\r\nTempo = Energia/Potência= 22/4,4 ≈ 5horas'),
(49, 45, 'Quando vários aparelhos são ligados em uma tomada múltipla, a corrente total pode exceder a capacidade da tomada, resultando em sobrecarga, que pode causar aquecimento e riscos de incêndio.'),
(50, 46, 'Ao criar uma rede de transportes eficiente, os custos para exportação diminuem e tornam o princípio da globalização realidade. Por isso, a alternativa C está coerente com o que foi perguntado na questão.'),
(51, 47, 'O texto faz menção aos \"avanços da ciência\" ocorridos com a Segunda Revolução Industrial (final do século XX). Estes avanços sempre significaram eficiência na produção, mais demissões e diminuição de emprego porque a máquina substitui a força de trabalho do ser humano.'),
(52, 48, 'Ao descrever a utilização das tecnologias dentro do processo produtivo, o texto faz uma ponte entre as necessidades específicas do solo e o auxílio que podemos obter da ciência e das máquinas para melhorar o aproveitamento da terra.'),
(53, 49, 'O texto descreve uma cadeia produtiva que se desenvolveu em distintas partes o globo e que só é possível existir graças ao avanço de meios de comunicação modernos e velozes.'),
(54, 50, 'A globalização cultural envolve a disseminação de ideias e produtos culturais em escala global, e um dos efeitos mais visíveis é a difusão de elementos da cultura ocidental (como filmes de Hollywood, música pop, etc.) para outras partes do mundo. As novas tecnologias de comunicação, como a internet, facilitam o acesso global a esses produtos culturais.'),
(55, 51, 'A desigualdade social nas grandes cidades se reflete na segregação espacial, onde as populações de baixa renda são concentradas em áreas periféricas, com acesso limitado a serviços básicos como educação, saúde e transporte.'),
(56, 52, 'Programas de redistribuição de renda, como o Bolsa Família, são exemplos de políticas que visam reduzir a desigualdade social, fornecendo suporte financeiro às populações de baixa renda e aumentando suas chances de acesso a bens e serviços básicos.'),
(57, 53, 'A globalização tem contribuído para a concentração de riqueza em grandes corporações e grupos econômicos, ampliando as desigualdades sociais e econômicas, já que os benefícios desse processo não são distribuídos de maneira equitativa.'),
(58, 54, 'A estratificação social se perpetua quando os recursos econômicos, políticos e sociais ficam concentrados nas mãos de uma pequena elite, dificultando a mobilidade social e mantendo as desigualdades de classe.'),
(59, 55, 'As políticas de ação afirmativa, como as cotas para estudantes de escolas públicas, buscam reduzir a desigualdade social e garantir uma maior inclusão de grupos historicamente desfavorecidos no acesso à educação superior.'),
(60, 56, 'A cultura se transforma ao longo do tempo por meio da interação entre diferentes grupos sociais e a incorporação de novos elementos. Essa integração é responsável por promover a diversidade cultural, sem necessariamente eliminar as tradições.'),
(61, 57, 'A valorização da diversidade cultural envolve o reconhecimento e respeito às diferentes formas de expressão cultural, promovendo a coexistência pacífica de várias culturas em uma mesma sociedade, sem imposição de uma cultura dominante.'),
(62, 58, 'O imperialismo cultural ocorre quando uma cultura dominante impõe seus valores, costumes e práticas sobre outras culturas, resultando na perda de elementos culturais locais e na homogeneização das expressões culturais.'),
(63, 59, 'A diversidade cultural implica no reconhecimento e valorização das múltiplas formas de expressão cultural que coexistem em uma sociedade, respeitando as diferenças entre os grupos e promovendo a convivência harmônica entre eles.'),
(64, 60, 'O respeito à diversidade cultural pode ser promovido por meio de políticas que garantam a inclusão de diferentes grupos e suas práticas culturais, valorizando as diversas formas de vida e expressão presentes em uma sociedade.'),
(65, 61, 'A Constituição de 1988 garante uma ampla gama de direitos, incluindo direitos sociais, econômicos e culturais, além dos direitos civis e políticos, assegurando assim a cidadania plena para todos os indivíduos.'),
(66, 62, 'Os movimentos sociais mobilizam grupos de pessoas em torno de causas comuns, organizando-se para reivindicar direitos e lutar contra a desigualdade, desempenhando assim um papel crucial na promoção da cidadania.'),
(67, 63, 'Os movimentos sociais desempenham um papel fundamental na promoção e defesa dos direitos humanos, mobilizando a sociedade e pressionando por mudanças necessárias para garantir esses direitos.'),
(68, 64, 'Os movimentos sociais têm como um de seus principais objetivos a promoção da participação política e a efetivação dos direitos de todos os cidadãos, buscando transformações sociais e políticas.'),
(69, 65, 'A atuação de movimentos sociais proporciona uma plataforma para que grupos marginalizados expressem suas demandas e lutem por seus direitos, contribuindo para uma sociedade mais inclusiva e igualitária.\r\n'),
(70, 66, 'Os pré-socráticos, como Tales de Mileto e Anaximandro, buscavam um princípio (arché) que explicasse a origem e a estrutura do cosmos, tentando encontrar uma unidade na diversidade dos fenômenos naturais.'),
(71, 67, 'A frase \"Conhece-te a ti mesmo\" enfatiza a importância do autoconhecimento como meio para se alcançar a virtude e a sabedoria, uma ideia central na filosofia socrática.'),
(72, 68, 'Na filosofia platônica, as Ideias são consideradas a verdadeira realidade, imutável e eterna, em contraste com o mundo sensível, que é imperfeito e transitório.'),
(73, 69, 'Para Aristóteles, a verdadeira felicidade (eudaimonia) é alcançada por meio da prática das virtudes, que envolvem o uso da razão e a busca por um equilíbrio na vida.'),
(74, 70, 'Os estoicos acreditavam que a verdadeira felicidade é alcançada por meio do desapego em relação às circunstâncias externas e pela aceitação daquilo que não podemos controlar, focando no que depende de nossa razão e virtude.'),
(75, 71, 'Santo Agostinho acreditava que a razão deve ser guiada pela fé e que o verdadeiro conhecimento é alcançado por meio da revelação divina, considerando a fé como fundamental para compreender a verdade.\r\n'),
(76, 72, 'Tomás de Aquino argumentou que a razão pode ser utilizada para compreender e explicar os princípios da fé cristã, defendendo a ideia de que ambos são complementares na busca pela verdade.'),
(77, 73, 'A \"Suma Teológica\" é a obra principal de Tomás de Aquino, onde ele apresenta suas cinco vias para provar a existência de Deus, integrando filosofia e teologia de forma sistemática.'),
(78, 74, 'A escolástica era marcada pelo método dialético, que envolvia questionamentos e respostas sobre temas teológicos e filosóficos, promovendo a discussão e a análise crítica.'),
(79, 75, 'O princípio da navalha de Ockham, também conhecido como \"ocam\'s razor\", é uma máxima que defende que a explicação mais simples, que não introduz mais elementos do que o necessário, é geralmente a mais correta, sendo um importante fundamento na filosofia e na ciência.'),
(80, 76, 'Para Descartes, o ato de duvidar é uma forma de pensar e, portanto, é prova de existência. A frase \"Penso, logo existo\" sintetiza sua busca por certezas inabaláveis e a centralidade da razão na construção do conhecimento.'),
(81, 77, 'Kant argumentou que a moralidade deve ser fundamentada em princípios racionais que valem para todos, independente das circunstâncias, expressando isso através dos imperativos categóricos, que são mandamentos éticos universais.\r\n'),
(82, 78, 'O empirismo sustenta que a experiência sensorial é a base do conhecimento, sendo a observação e a percepção essenciais para a formação de ideias e conceitos.'),
(83, 79, 'Hobbes acredita que sem um governo central forte para manter a ordem, os indivíduos estariam em constante conflito, resultando em uma vida \"solitária, pobre, desagradável, brutal e curta\".'),
(84, 80, 'Spinoza introduziu a ideia de que Deus não é um ser pessoal e separado, mas sim a totalidade da natureza, defendendo que tudo o que existe é uma manifestação da mesma substância divina, uma visão conhecida como panteísmo.'),
(85, 81, 'Sartre argumenta que, ao nascer, o ser humano é livre para fazer escolhas, mas essa liberdade traz uma responsabilidade pesada, levando à \"condição\" de ser \"condenado\" a escolher e definir a própria essência.'),
(86, 82, 'Foucault argumenta que o conhecimento não é apenas uma representação da verdade, mas que está ligado ao poder; as relações de poder influenciam o que é considerado conhecimento e verdade em diferentes contextos sociais.'),
(87, 83, 'Wittgenstein, em sua obra \"Investigações Filosóficas\", propõe que a linguagem é uma atividade social que se insere em contextos de vida, sugerindo que o significado das palavras está ligado ao uso prático na vida cotidiana.'),
(88, 84, 'Habermas acredita que a comunicação racional é essencial para a formação de consenso na esfera pública, permitindo o debate democrático e a construção de uma sociedade mais justa e inclusiva.'),
(89, 85, 'A filosofia feminista busca questionar e desafiar as normas e estruturas que sustentam a desigualdade de gênero, promovendo a igualdade e a liberdade para todas as identidades de gênero.'),
(90, 86, 'A técnica usada para clonar a ovelha Dolly foi a transferência nuclear, na qual o núcleo de uma célula somática adulta é inserido em um óvulo cujo núcleo foi removido. Esse óvulo se desenvolve em um organismo geneticamente idêntico ao doador do núcleo.'),
(91, 87, 'A terapia gênica consiste em introduzir cópias normais de genes para substituir ou corrigir os genes defeituosos que causam doenças, com o objetivo de restaurar o funcionamento normal das células.'),
(92, 88, 'Os OGMs são criados por meio da inserção de genes de interesse em seu genoma, utilizando técnicas de engenharia genética, o que confere novas características ao organismo, como resistência a pragas ou maior produtividade.'),
(93, 89, 'A biotecnologia permite a produção de insulina humana por bactérias geneticamente modificadas, que são capazes de sintetizar a insulina, uma proteína vital para o controle do diabetes, de maneira mais eficiente e segura.'),
(94, 90, 'As células-tronco são valiosas na medicina regenerativa porque têm a capacidade de se diferenciar em diferentes tipos de células especializadas, possibilitando a regeneração de tecidos e órgãos danificados.'),
(95, 91, 'As hemácias (ou glóbulos vermelhos) são células especializadas no transporte de oxigênio dos pulmões para os tecidos e de dióxido de carbono dos tecidos de volta aos pulmões, através da hemoglobina, uma proteína presente nessas células.'),
(96, 92, 'A digestão de proteínas começa no estômago, onde o suco gástrico, que contém ácido clorídrico e pepsina, inicia a quebra das proteínas. A digestão continua no intestino delgado, onde as enzimas pancreáticas, como a tripsina, completam o processo de degradação das proteínas em aminoácidos.'),
(97, 93, 'Os neurônios transmitem impulsos nervosos através de sinais elétricos que se propagam ao longo do axônio, chegando até as sinapses, onde a transmissão ocorre via neurotransmissores que atravessam a fenda sináptica.'),
(98, 94, 'A troca de gases (oxigênio e dióxido de carbono) no sistema respiratório ocorre nos alvéolos, que são pequenas estruturas saculares nos pulmões, onde o oxigênio passa para o sangue e o dióxido de carbono é liberado para ser exalado.'),
(99, 95, 'Os rins filtram o sangue para remover resíduos metabólicos, como ureia e excesso de sais, regulando também os níveis de água e eletrólitos no corpo. O produto final desse processo é a urina, que é eliminada do corpo pelo sistema urinário.'),
(100, 96, 'A fotossíntese é o processo pelo qual organismos autótrofos, como plantas e algas, utilizam a luz solar para converter dióxido de carbono (CO₂) e água em glicose e oxigênio, removendo assim o gás carbônico da atmosfera.'),
(101, 97, 'Nos líquens, o fungo e a alga estabelecem uma relação de mutualismo, na qual ambos se beneficiam. O fungo fornece proteção e retém água, enquanto a alga realiza fotossíntese, fornecendo nutrientes para ambos.'),
(102, 98, 'Na sucessão ecológica primária, a colonização inicial ocorre em ambientes que nunca foram habitados, como áreas rochosas recém-expostas por geleiras. Organismos pioneiros, como líquens e musgos, são os primeiros a colonizar essas áreas.'),
(103, 99, 'Os decompositores, como fungos e bactérias, são responsáveis por decompor matéria orgânica de organismos mortos, reciclando nutrientes que voltam ao solo e são utilizados pelos produtores, mantendo o equilíbrio dos ecossistemas.'),
(104, 100, 'A eutrofização ocorre quando há um excesso de nutrientes na água, como nitratos e fosfatos provenientes de esgotos e fertilizantes, levando à proliferação excessiva de algas. Isso reduz a quantidade de oxigênio na água, causando a morte de organismos aquáticos e, consequentemente, uma diminuição da biodiversidade.'),
(105, 101, 'Os ribossomos são organelas celulares responsáveis pela síntese de proteínas, ligando-se ao RNA mensageiro para decodificar as informações genéticas e formar as cadeias polipeptídicas.'),
(106, 102, 'O modelo de mosaico fluido descreve a membrana plasmática como uma bicamada de fosfolipídios na qual estão inseridas proteínas que podem se mover lateralmente, proporcionando flexibilidade e seletividade à membrana.'),
(107, 103, 'As mitocôndrias são responsáveis pela respiração celular aeróbica, um processo que converte glicose e oxigênio em energia (na forma de ATP), dióxido de carbono e água.'),
(108, 104, 'Os lisossomos contêm enzimas digestivas que são responsáveis pela degradação de partículas englobadas pela célula, como nutrientes e organelas danificadas.'),
(109, 105, 'O núcleo celular contém o material genético (DNA), que controla as funções celulares através da síntese de RNA e da regulação da produção de proteínas, essenciais para o metabolismo e outras funções vitais.'),
(110, 161, 'O seguinte trecho é justificativa para a escolha da alternativa [B]: “Own a renovated house for less than $290 per month” (Seja dono de uma casa reformada por menos de $290 por mês).'),
(111, 162, 'O texto afirma que humans and other mammals possess the same chemical road map for making it (“seres humanos e outros mamíferos possuem a mesma via metabólica para produzi-la [morfina]”).\r\n'),
(112, 163, 'A resposta pode ser encontrada no seguinte trecho: “There probably was a shortage of not just respect and boundaries but also love” (Houve provavelmente uma falta não só de respeito e limites, mas também de amor).'),
(113, 164, 'A resposta encontra-se no segundo parágrafo: […] two little-known companies have a huge head start. Get their names in a free report from The Motley Fool called, “The Two Words Bill Gates Doesn’t Want You to Hear…”.\r\n'),
(114, 165, 'O poema pode ser entendido da seguinte maneira: “Havia a bifurcação de duas estradas em uma floresta e eu —/ Eu peguei aquela menos percorrida,/ E isso fez toda a diferença”. O fato de o eu lírico ter escolhido o caminho menos conhecido evidencia sua ousadia.'),
(115, 166, 'Para responder a essa questão, é necessário voltar à leitura das primeiras linhas do segundo parágrafo: “Me refiero a cómo te besé para siempre en mi mirada, dentro de mi imaginación, como si así jamás pudiera volver a desasirme de tu imagen, sin quererla hacer mía, tan solo contemplándola, envolviéndome con ella como el cielo se envuelve de la noche.”.'),
(116, 167, 'Essa questão tem a sua resposta se olharmos as linhas 06 e 07 do texto: “Cuando estaba más mala y no me dejaban beber agua, soñaba con los postres de mi mamá”.'),
(117, 168, ' A palavra mientras é um advérbio e quer dizer “enquanto” no português'),
(118, 169, 'O texto trata de um aspecto da gastronomia típica da Espanha, as tapas. Por outro lado, a questão se baseia no significado da palavra Rasgos, que significa características, peculiaridades.\r\n'),
(119, 170, ' O objetivo desse texto é anunciar as modificações feitas nos verbetes de um dicionário digital.'),
(120, 151, 'A resposta correta é a Letra C: is, am, am, are, his, is.\r\n\r\n\"My name _ Mary\" → Aqui, a frase está se referindo ao nome de uma pessoa, então usamos \"is\": \"My name is Mary\".\r\n\r\n\"I _ 17 years old\" → \"Eu sou\" em inglês é \"I am\", logo: \"I am 17 years old\".\r\n\r\n\"I _ from Brazil\" → O sujeito é \"I\" (eu), então o correto é \"am\": \"I am from Brazil\".\r\n\r\n\"they _ playing in the garden\" → \"They\" está no plural, então usamos \"are\": \"they are playing in the garden\".\r\n\r\n\"_ name _ Luke\" → Referindo-se ao nome do irmão, usamos \"his\" para \"dele\": \"his name is Luke\".'),
(121, 152, 'A frase correta é a Letra B: the/children/are/playing/in/the/park.\r\n\r\nEsta frase segue a estrutura correta de uma oração em inglês: Sujeito (the children) + Verbo (are playing) + Complemento (in the park).'),
(122, 153, 'A resposta correta é a Letra B: The boys aren\'t playing soccer.\r\n\r\nEssa frase está corretamente no negativo, com o verbo auxiliar \"are\" e a contração \"aren\'t\" (are not).\r\n\r\nLetra A: \"Is not Julie studying English?\" não está correta, porque perguntas não usam \"is not\" no início. A forma correta seria \"Is Julie not studying English?\".\r\n\r\nLetra C: \"I not am correct about it\" está na ordem errada; o correto seria \"I am not correct about it\".\r\n\r\nLetra D: Não está no negativo, então não é a resposta esperada.'),
(123, 154, 'A resposta correta é a Letra D: Are you a good friend?.\r\n\r\nEm perguntas, o verbo \"to be\" deve vir antes do sujeito. A estrutura correta para perguntas é: Verbo + Sujeito.\r\n\r\nLetra A: \"I am your teacher?\" está errada porque o verbo deveria vir antes do sujeito: \"Am I your teacher?\".\r\n\r\nLetra B: \"You are a good student?\" também está na ordem errada. O correto seria: \"Are you a good student?\".\r\n\r\nLetra C: \"They teenagers?\" está faltando o verbo \"to be\" (Are they teenagers?).'),
(124, 155, 'A resposta correta é a Letra A: What is you doing?.\r\n\r\nLetra A está incorreta porque o sujeito \"you\" requer \"are\" e não \"is\". O correto seria: \"What are you doing?\".\r\n\r\nAs outras opções estão corretas:\r\n\r\nLetra B: \"Mary and Ketty are sisters.\" está correta.\r\n\r\nLetra C: \"The dog is black.\" está correta.\r\n\r\nLetra D: \"I don\'t know who are you.\" pode parecer estranha, mas está correta porque é uma forma de frase subordinada onde \"are you\" pode ser usado assim.'),
(125, 156, 'A resposta correta é a Letra C: Hello, Good morning! How are you?\r\n\r\nA frase começa com \"Hello\" (Olá), depois \"Good morning\" (Bom dia) e \"How are you?\" (Como você está?). Essa é a forma completa e mais polida de cumprimentar alguém.\r\n\r\nLetra A também seria aceitável, mas não inclui \"Hello\", que é uma parte importante de \"Olá\".\r\n\r\nLetra B e Letra D omitem o \"Hello\", o que torna essas alternativas incompletas em comparação com a frase original.'),
(126, 157, 'A resposta correta é a Letra B: De onde você é?\r\n\r\n\"Where are you from?\" significa exatamente \"De onde você é?\".\r\n\r\nLetra A: \"Qual é seu nome?\" seria \"What is your name?\".\r\n\r\nLetra C: \"Você está bem?\" seria \"Are you okay?\" ou \"Are you fine?\".\r\n\r\nLetra D: \"Vamos sair?\" seria \"Shall we go out?\" ou \"Let\'s go out?\".'),
(127, 158, 'A resposta correta é a Letra A: I am years old.\r\n\r\nEm inglês, a forma correta de responder à idade é \"I am (número) years old\", como por exemplo: \"I am 25 years old\".\r\n\r\nLetra B está incorreta, porque em inglês não se usa o verbo \"have\" para a idade, diferente do português. A forma com \"I have\" é incorreta neste contexto.\r\n\r\nLetra C e Letra D são incorretas porque a resposta certa é apenas a Letra A.'),
(128, 159, 'A resposta correta é a Letra D: Thursday (Terça-feira).\r\n\r\nThursday significa \"quinta-feira\", e não \"terça-feira\". Por isso, está incorreto.\r\n\r\nMonday (segunda-feira), Friday (sexta-feira), e Wednesday (quarta-feira) estão corretamente traduzidos.'),
(129, 160, 'A resposta correta é a Letra C: four, eight, sixty, hundred.\r\n\r\nA ordem correta dos números é:\r\n\r\n4 = four\r\n8 = eight\r\n60 = sixty\r\n100 = hundred\r\n\r\nAs outras opções misturam a ordem dos números ou possuem erros de sequência.'),
(130, 171, 'A resposta correta é a Letra A: Yo, él, eso, nosotros.\r\n\r\n\"Yo\" significa \"Eu\".\r\n\"Él\" significa \"Ele\".\r\n\"Eso\" significa \"Isso\".\r\n\"Nosotros\" significa \"Nós\".\r\n\r\nAs outras alternativas têm pronomes fora de ordem ou incorretos.'),
(131, 172, 'A resposta correta é a Letra C: Com o ponto de interrogação no começo (¿) e no final (?).\r\n\r\nEm espanhol, as perguntas sempre são escritas com dois pontos de interrogação: ¿ no início e ? no final da frase.\r\n\r\nAs alternativas A e B estão incorretas porque o uso do ponto de interrogação só no final ou só no começo não segue as regras da língua espanhola.\r\n\r\nLetra D está incorreta, pois a ordem dos símbolos está invertida.'),
(132, 173, 'A resposta correta é a Letra A: \"Tú\" é usado para ocasiões informais e \"usted\" para ocasiões formais.\r\n\r\n\"Tú\" é a forma informal de \"você\", usada com amigos, familiares e pessoas próximas.\r\n\"Usted\" é a forma formal, usada para falar com pessoas em situações de respeito ou profissionalismo.\r\n\r\nLetra B está errada porque inverte os contextos de uso.\r\n\r\nLetra C está incorreta, pois há, sim, uma diferença entre \"tú\" e \"usted\".'),
(133, 174, 'A resposta correta é a Letra B: Bom dia! Como você está?\r\n\r\n\"Buenos días\" significa \"Bom dia\".\r\n\"¿Cómo estás?\" significa \"Como você está?\" em uma conversa informal.\r\n\r\nLetra A e Letra D traduzem incorretamente a pergunta, pois não correspondem à frase original.\r\n\r\nLetra C está errada porque \"Buenos días\" significa \"Bom dia\", não \"Boa tarde\".'),
(134, 175, 'A resposta correta é a Letra D: Hola, me llamo Julie! Mucho gusto!\r\n\r\n\"Hola\" significa \"Olá\".\r\n\r\n\"Me llamo Julie\" significa \"Me chamo Julie\".\r\n\r\n\"Mucho gusto\" significa \"Prazer em conhecê-lo\".\r\n\r\nLetra A está quase correta, mas \"Ola\" está com a ortografia incorreta; deve ser \"Hola\".\r\n\r\nLetra B inclui português, então está incorreta.\r\n\r\nLetra C mistura inglês e espanhol, o que também está errado.'),
(135, 176, 'A resposta correta é a Letra D: ¿Cómo está usted?\r\n\r\nEm espanhol, \"usted\" é a forma formal de tratamento, usada para falar com pessoas em contextos formais ou quando se quer mostrar respeito.\r\n\r\nAs outras alternativas usam \"tú\" ou \"estás\", que são informais e adequadas para conversas entre amigos ou pessoas de idade semelhante.'),
(136, 177, 'A resposta correta é a Letra C: Yo soy de Brasil.\r\n\r\nA tradução correta de \"Eu sou do Brasil\" é \"Yo soy de Brasil\", onde \"soy\" é o verbo \"ser\" conjugado e \"de\" significa \"de\".\r\n\r\nLetra A: \"Yo Brasil soy\" está fora de ordem.\r\n\r\nLetra B: \"Me de Brasil\" está incorreto, pois \"me\" não se usa neste contexto.\r\n\r\nLetra D: \"Yo tengo Brasil\" está incorreto, pois \"tener\" significa \"ter\", não \"ser\".'),
(137, 178, 'A resposta correta é a Letra A: ¿Cuántos años tiene?\r\n\r\nA frase correta para perguntar a idade em espanhol é \"¿Cuántos años tiene?\", sendo \"tiene\" a conjugação formal do verbo \"tener\".\r\n\r\nLetra B: \"¿Cuántos años?\" é incompleta.\r\n\r\nLetra C: \"¿Cómo te llamas?\" significa \"Como você se chama?\", e não está relacionada à idade.\r\n\r\nLetra D: \"¿Años tiene?\" está incorreto, pois falta o \"Cuántos\" (Quantos).'),
(138, 179, 'A resposta correta é a Letra B: ¡Hasta mañana!\r\n\r\n\"Hasta mañana\" significa \"Até amanhã!\" em espanhol.\r\n\r\nLetra A: \"Hasta luego\" significa \"Até logo!\".\r\n\r\nLetra C: \"Buen viaje!\" significa \"Boa viagem!\".\r\n\r\nLetra D: \"Tenga un buen día!\" significa \"Tenha um bom dia!\".'),
(139, 180, 'A resposta correta é a Letra C: dos, ocho, cuarenta, mil.\r\n\r\nA ordem correta dos números é:\r\n\r\n2 = dos\r\n8 = ocho\r\n40 = cuarenta\r\n1000 = mil\r\n\r\nAs outras opções têm a ordem dos números trocada ou incorreta.');

-- --------------------------------------------------------

--
-- Estrutura para tabela `estatisticas_usuarios`
--

CREATE TABLE `estatisticas_usuarios` (
  `estatistica_id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `materia_id` int(11) DEFAULT NULL,
  `acertos` int(11) DEFAULT 0,
  `erros` int(11) DEFAULT 0,
  `total_perguntas` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `materias_nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `materias`
--

INSERT INTO `materias` (`id`, `materias_nome`) VALUES
(1, 'PORTUGUÊS'),
(2, 'MATEMÁTICA'),
(3, 'BIOLOGIA'),
(4, 'QUÍMICA'),
(5, 'FÍSICA'),
(6, 'HISTÓRIA'),
(7, 'GEOGRAFIA'),
(8, 'FILOSOFIA'),
(9, 'SOCIOLOGIA'),
(10, 'INGLÊS'),
(11, 'ESPANHOL');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pdfs`
--

CREATE TABLE `pdfs` (
  `pdf_id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `subconteudo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pdfs`
--

INSERT INTO `pdfs` (`pdf_id`, `titulo`, `url`, `subconteudo_id`) VALUES
(1, 'teste', 'https://me-qr.com/sBoPfJmg', 1),
(2, 'Óptica', '../../assets/pdfs/OPTICA.pdf', 44),
(3, 'Cinemática', '../../assets/pdfs/CINEMATICA.pdf\r\n', 45),
(4, 'Eletrodinâmica', '../../assets/pdfs/ELETRODINAMICA.pdf\r\n', 46),
(5, 'Estequiometria', '../../assets/pdfs/ESTEQUIOMETRIA.pdf\r\n', 13),
(6, 'Ondulatória', '../../assets/pdfs/ONDULATORIA.pdf\r\n', 43),
(7, 'Termoquímica', '../../assets/pdfs/TERMOQUIMICA.pdf\r\n', 15),
(8, 'Água e suas propriedades', '../../assets/pdfs/AGUA_E_SUAS_PROPRIEDADES.pdf\r\n', 16),
(9, 'Funções inorgânicas', '../../assets/pdfs/FUNCOES_INORGANICAS.pdf\r\n', 14),
(10, 'Verb to be', '../../assets/pdfs/VERB_TO_BE.pdf', 54),
(11, 'Vocabulário e números', '../../assets/pdfs/VOCABULARIO_E_NUMEROS.pdf', 53),
(12, 'Interpretação de texto', '../../assets/pdfs/INTERPRETACAO_DE_TEXTO.pdf', 55),
(13, 'Introdução', '../../assets/pdfs/INTRODUCAO.pdf', 56),
(14, 'Interpretação de texto', '../../assets/pdfs/INTERPRETACAO_DE_TEXTO_ESP.pdf', 57),
(15, 'Expressões comuns', '../../assets/pdfs/EXPRESSOES_COMUNS.pdf', 58),
(16, 'Cidadania e Movimentos Sociais', '../../assets/pdfs/Cidadania_e_Movimentos_Sociais.docx.pdf', 52),
(17, 'Cultura e Diversidade Cultural', '../../assets/pdfs/Cultura_e_Diversidade_Cultural.docx.pdf', 51),
(18, 'Citologia', '../../assets/pdfs/Citologia.docx.pdf', 66),
(19, 'Ecologia', '../../assets/pdfs/Ecologia.docx.pdf', 65),
(20, 'Estratificação e desigualdade social', '../../assets/pdfs/Estratificacao_e_desigualdade_social.docx.pdf', 50),
(21, 'Filosofia Antiga', '../../assets/pdfs/Filosofia_Antiga.docx.pdf', 62),
(22, 'Filosofia_Contemporanea.docx.pdf', '../../assets/pdfs/Filosofia_Contemporanea.docx.pdf', 61),
(23, 'Filosofia Medieval', '../../assets/pdfs/Filosofia_Medieval.docx.pdf', 60),
(24, 'Filosofia Moderna', '../../assets/pdfs/Filosofia_Moderna.docx.pdf', 59),
(25, 'Fisiologia Humana', '../../assets/pdfs/Fisiologia_Humana.docx.pdf', 64),
(26, 'Genética e Biotecnologia', '../../assets/pdfs/Genetica_e_Biotecnologia.docx.pdf', 63),
(27, 'Globalização e Sociedade Contemporanea', '../../assets/pdfs/Globalização_e_Sociedade_Contemporanea.docx.pdf', 49);

-- --------------------------------------------------------

--
-- Estrutura para tabela `perguntas`
--

CREATE TABLE `perguntas` (
  `pergunta_id` int(11) NOT NULL,
  `enunciado` text NOT NULL,
  `questionario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `perguntas`
--

INSERT INTO `perguntas` (`pergunta_id`, `enunciado`, `questionario_id`) VALUES
(1, 'A disparidade de volume entre os planetas é tão grande que seria possível colocá-los uns dentro dos outros. O planeta Mercúrio é o menor de todos. Marte é o segundo menor: dentro dele cabem três Mercúrios. Terra é o único com vida: dentro dela cabem sete Martes. Netuno e o quarto maior: dentro dele cabem 58 Terras. Júpiter é o maior dos planetas: dentro dele cabem 23 Netunos.\\r\\n\\r\\nRevista Veja. Ano 41, nº. 26, 25 jun. 2008 (adaptado)\\r\\n\\r\\nSeguindo o raciocínio proposto, quantas Terras cabem dentro de Júpiter?', 4),
(2, 'Em um torneio interclasses de um colégio, visando estimular o aumento do número de gols nos jogos de futebol, a comissão organizadora estabeleceu a seguinte forma de contagem de pontos para cada partida: uma vitória vale três pontos, um empate com gols vale dois pontos, um empate sem gols vale um ponto e uma derrota vale zero ponto. Após 12 jogos, um dos times obteve como resultados cinco vitórias e sete empates, dos quais, três sem gols.', 4),
(3, 'Na cidade de João e Maria, haverá shows em uma boate. Pensando em todos, a boate propôs pacotes para que os fregueses escolhessem o que seria melhor para si.\\r\\n\\r\\nPacote 1: taxa de 40 reais por show.\\r\\n\\r\\nPacote 2: taxa de 80 reais mais 10 reais por show.\\r\\n\\r\\nPacote 3: taxa de 60 reais para 4 shows, e 15 reais por cada show a mais.\\r\\n\\r\\nJoão assistirá a 7 shows e Maria, a 4. As melhores opções para João e Maria são, respectivamente, os pacotes', 4),
(4, 'Um clube de futebol abriu inscrições para novos jogadores. Inscreveram-se 48 candidatos. Para realizar uma boa seleção, deverão ser escolhidos os que cumpram algumas exigências: os jogadores deverão ter mais de 14 anos, estatura igual ou superior à mínima exigida e bom preparo físico. Entre os candidatos, 7/8 têm mais de 14 anos e foram pré-selecionados. Dos pré-selecionados, 1/2 têm estatura igual ou superior à mínima exigida e, destes, 2/3 têm bom preparo físico.\\r\\n\\r\\nA quantidade de candidatos selecionados pelo clube de futebol foi', 4),
(5, 'Um paciente precisa ser submetido a um tratamento, sob orientação médica, com determinado medicamento. Há cinco possibilidades de medicação, variando a dosagem e o intervalo de ingestão do medicamento. As opções apresentadas são:\\r\\n\\r\\nA: um comprimido de 400 mg, de 3 em 3 horas, durante 1 semana;\\r\\nB: um comprimido de 400 mg, de 4 em 4 horas, durante 10 dias;\\r\\nC: um comprimido de 400 mg, de 6 em 6 horas, durante 2 semanas;\\r\\nD: um comprimido de 500 mg, de 8 em 8 horas, durante 10 dias;\\r\\nE: um comprimido de 500 mg, de 12 em 12 horas, durante 2 semanas.\\r\\n\\r\\nPara evitar efeitos colaterais e intoxicação, a recomendação é que a quantidade total de massa da medicação ingerida, em miligramas, seja a menor possível.\\r\\n\\r\\nSeguindo a recomendação, deve ser escolhida a opção', 4),
(6, 'Uma antiga forma de produzir um dos constituintes de argamassas é o aquecimento a altas temperaturas de materiais componentes dos sambaquis, que são sítios arqueológicos formados essencialmente por restos de moluscos. A decomposição térmica da principal substância desses sítios arqueológicos resulta na formação de dois compostos apenas. Um deles é um óxido sólido e o outro é um óxido gasoso. A reação do primeiro com água resulta na formação de Ca(OH)2 (aquoso), enquanto a reação do segundo resulta em H2CO3 (aquoso).\r\n\r\n \r\n\r\nA fórmula da principal substância encontrada nesses sítios arqueológicos é:', 5),
(7, 'Climatério é o nome de um estágio no processo de amadurecimento de determinados frutos, caracterizado pelo aumento do nível da respiração celular e do gás etileno (C2H4). Como consequência, há o escurecimento do fruto, o que representa a perda de muitas toneladas de alimentos a cada ano.\r\n\r\nÉ possível prolongar a vida de um fruto climatérico pela eliminação do etileno produzido. Na indústria, utiliza-se o permanganato de potássio (KMnO4) para oxidar o etileno a etilenoglicol (HOCH2CH2OH), sendo o processo representado de forma simplificada na equação:\r\n\r\n \r\n\r\n2 KMnO4 + 3 C2H4 + 4 H2O \r\n→\r\n 2 MnO2 + 3 HOCH2CH2OH + 2 KOH\r\n\r\n \r\n\r\nO processo de amadurecimento começa quando a concentração de etileno no ar está em cerca de 1,0 mg de C2H4 por kg de ar.\r\n\r\nAs massas molares dos elementos H, C, O, K e Mn são, respectivamente, iguais a 1 g/mol, 12 g/mol, 16 g/mol, 39 g/mol e 55 g/mol.\r\n\r\n \r\n\r\nA fim de diminuir essas perdas, sem desperdício de reagentes, a massa mínima de KMnO4 por kg de ar é mais próxima de', 5),
(8, 'Objetos de prata sofrem escurecimento devido à sua reação com enxofre. Estes materiais recuperam seu brilho característico quando envoltos por papel alumínio e mergulhados em um recipiente contendo água quente e sal de cozinha.\r\n\r\n \r\n\r\nA reação não balanceada que ocorre é:\r\n\r\n \r\n\r\nAg2S (s) + Al (s) \r\n→\r\n Al2S3 (s) + Ag (s)\r\n\r\n \r\n\r\nDados da massa molar dos elementos (g mol–1): Ag = 108; S = 32.\r\n\r\nUCKO, D. A. Química para as ciências da saúde: uma introdução à química geral, orgânica e biológica. São Paulo: Manole, 1995 (adaptado).\r\n\r\n \r\n\r\nUtilizando o processo descrito, a massa de prata metálica que será regenerada na superfície de um objeto que contém 2,48 g de Ag2S é', 5),
(9, 'Um marceneiro esqueceu um pacote de pregos ao relento, expostos à umidade do ar e à chuva. Com isso, os pregos de ferro, que tinham a massa de 5,6 g cada, acabaram cobertos por uma camada espessa de ferrugem (Fe2O3  H2O), uma substância marrom insolúvel, produto da oxidação do ferro metálico, que ocorre segundo a equação química:\r\n\r\n \r\n\r\n2 Fe (s) + 3/2 O2 (g) + H2O (l) \r\n→\r\n Fe2O3  H2O (s)\r\n\r\n \r\n\r\nConsidere as massas molares (g/mol): H = 1; O = 16; Fe = 56.\r\n\r\n \r\n\r\nQual foi a massa de ferrugem produzida ao se oxidar a metade (50%) de um prego?', 5),
(10, 'O carvão é um combustível que tem várias substâncias em sua composição. Em razão disso, quando é representada sua queima com o oxigênio (massa molar 16 g mol–1), simplifica-se elaborando apenas a combustão completa do carbono (massa molar 12 g mol–1). De acordo com o conteúdo médio de carbono fixo, o carvão é classificado em vários tipos, com destaque para o antracito, que apresenta, em média, 90% de carbono. Esse elevado conteúdo favorece energeticamente a combustão, no entanto, libera maior quantidade de gás que provoca efeito estufa.\r\n\r\n \r\n\r\nSupondo a queima completa de 100 g de carvão antracito, a massa de gás liberada na atmosfera é, em grama, mais próxima de', 5),
(11, 'Antigamente, em lugares com invernos rigorosos, as pessoas acendiam fogueiras dentro de uma sala fechada para se aquecerem do frio. O risco no uso desse recurso ocorria quando as pessoas adormeciam antes de apagarem totalmente a fogueira, o que poderia levá-las a óbito, mesmo sem a ocorrência de incêndio.\r\n\r\n \r\n\r\nA causa principal desse risco era o(a)', 6),
(12, 'Atualmente, soldados em campo, seja em treinamento ou em combate, podem aquecer suas refeições, prontas e embaladas em bolsas plásticas, utilizando aquecedores químicos, sem precisar fazer fogo. Dentro dessas bolsas existe magnésio metálico em pó e, quando o soldado quer aquecer a comida, ele coloca água dentro da bolsa, promovendo a reação descrita pela equação química:\r\n\r\n \r\n\r\nMg (s) + 2 H2O (l)  Mg(OH)2 (s) + H2 (g) + 350 kJ\r\n\r\n \r\n\r\nO aquecimento dentro da bolsa ocorre por causa da', 6),
(13, 'O etanol é um combustível renovável obtido da cana-de-açúcar e é menos poluente do que os combustíveis fósseis, como a gasolina e o diesel. O etanol tem densidade 0,8 g/cm3, massa molar 46 g/mol e calor de combustão aproximado de –1.300 kJ/mol. Com o grande aumento da frota de veículos, tem sido incentivada a produção de carros bicombustíveis econômicos, que são capazes de render até 20 km/L em rodovias, para diminuir a emissão de poluentes atmosféricos.\r\n\r\nO valor correspondente à energia consumida para que o motorista de um carro econômico, movido a álcool, percorra 400 km na condição de máximo rendimento é mais próximo de', 6),
(14, 'Por meio de reações químicas que envolvem carboidratos, lipídeos e proteínas, nossas células obtêm energia e produzem gás carbônico e água. A oxidação da glicose no organismo humano libera energia, conforme ilustra a equação química, sendo que aproximadamente 40% dela é disponibilizada para atividade muscular.\r\n\r\n \r\n\r\nC6H12O6 (s) + 6 O2 (g) --> 6 CO2 (g) + 6 H2O (l)\r\n\r\n∆CH = –2.800 kJ\r\n\r\n \r\n\r\nConsidere as massas molares (em g mol–1): H = 1; C = 12; O = 16.\r\n\r\n \r\n\r\nLIMA, L. M.; FRAGA, C. A. M.; BARREIRO, E. J. Química na saúde. São Paulo: Sociedade Brasileira de Química, 2010 (adaptado).\r\n\r\n \r\n\r\nNa oxidação de 1,0 grama de glicose, a energia obtida para atividade muscular, em quilojoule, é mais próxima de', 6),
(15, 'A obtenção de energia por meio da fissão nuclear do 235U é muito superior quando comparada à combustão da gasolina, O calor liberado na fissão do 235U é 8x1010 J/g e na combustão da gasolina é 5x104 J/g.\r\n\r\nA massa de gasolina necessária para obter a mesma energia na fissão de 1 kg de 235U é da ordem de', 6),
(16, 'Muitas indústrias e fábricas lançam para o ar, através de suas chaminés, poluentes prejudiciais às plantas e aos animais. Um desses poluentes reage quando em contato com o gás oxigênio e a água da atmosfera, conforme as equações químicas:\r\n\r\n \r\n\r\nEquação 1: 2 SO₂ + O₂\r\n→\r\n 2 SO3\r\n\r\nEquação 2: SO₃ + H₂O \r\n→\r\n H₂SO₄ \r\n\r\n \r\n\r\nDe acordo com as equações, a alteração ambiental decorrente da presença desse poluente intensifica o(a)', 7),
(17, 'A atmosfera terrestre é composta pelos gases nitrogênio (N₂) e oxigênio (O₂), que somam cerca de 99 %, e por gases traços, entre eles o gás carbônico (CO₂), vapor de água (H₂O), metano (CH₄), ozônio (O₃) e o óxido nitroso (N₂O), que compõem o restante 1 % do ar que respiramos.\r\n\r\nOs gases traços, por serem constituídos por pelo menos três átomos, conseguem absorver o calor irradiado pela Terra, aquecendo o planeta. Esse fenômeno, que acontece há bilhões de anos, é chamado de efeito estufa. A partir da Revolução Industrial (século XIX), a concentração de gases traços na atmosfera, em particular o CO₂, tem aumentado significativamente, o que resultou no aumento da temperatura em escala global. Mais recentemente, outro fator tornou-se diretamente envolvido no aumento da concentração de CO₂ na atmosfera: o desmatamento.\r\n\r\nBROWN, I. F.; ALECHANDRE, A. S. Conceitos básicos sobre clima, carbono, florestas e comunidades. A.G. Moreira & S. Schwartzman. As mudanças climáticas globais e os ecossistemas brasileiros. Brasília: Instituto de Pesquisa Ambiental da Amazônia, 2000 (adaptado).\r\n\r\n \r\n\r\nConsiderando o texto, uma alternativa viável para combater o efeito estufa é', 7),
(18, 'Nos anos 1990, verificou-se que o rio Potomac, situado no estado norte-americano de Maryland, tinha, em parte de seu curso, águas extremamente ácidas por receber um efluente de uma mina de carvão desativada, o qual continha ácido sulfúrico (H₂SO₄). Essa água, embora límpida, era desprovida de vida. Alguns quilômetros adiante, instalou-se uma fábrica de papel e celulose que emprega hidróxido de sódio (NaOH) e carbonato de sódio (Na₂CO₃) em seus processos. Em pouco tempo, observou-se que, a partir do ponto em que a fábrica lança seus rejeitos no rio, a vida aquática voltou a florescer.\r\n\r\nHARRIS, D. C. Análise química quantitativa.\r\n\r\nRio de Janeiro: Livros Técnicos e Científicos, 2012 (adaptado).\r\n\r\n \r\n\r\nA explicação para o retorno da vida aquática nesse rio é a', 7),
(19, 'Grandes quantidades de enxofre são lançadas na atmosfera diariamente, na forma de dióxido de enxofre (SO₂), como decorrência de atividades industriais e de queima de combustíveis fósseis.\r\n\r\n \r\n\r\nEm razão da alta concentração desses compostos na atmosfera, regiões com conglomerados urbanos e polos industriais apresentam ocorrência sazonal de', 7),
(20, 'O mármore é um material empregado para revestimento de pisos e um de seus principais constituintes é o carbonato de cálcio. Na limpeza desses pisos com solução ácida, ocorre efervescência. Nessa efervescência o gás liberado é o', 7),
(21, 'O ciclo da água é fundamental para a preservação da vida no planeta. As condições climáticas da Terra permitem que a água sofra mudanças de fase e a compreensão dessas transformações é fundamental para se entender o ciclo hidrológico. Numa dessas mudanças, a água ou a umidade da terra absorve o calor do sol e dos arredores. Quando já foi absorvido calor suficiente, algumas das moléculas do líquido podem ter energia necessária para começar a subir para a atmosfera.\r\n\r\nDisponível em: http://www.keroagua.blogspot.com. Acesso em: 30 mar. 2009 (adaptado).\r\n\r\n \r\n\r\nA transformação mencionada no texto é a ', 8),
(22, 'Em derramamentos de óleo no mar, os produtos conhecidos como “dispersantes” são usados para reduzir a tensão superficial do petróleo derramado, permitindo que o vento e as ondas “quebrem” a mancha em gotículas microscópicas. Estas são dispersadas pela água do mar antes que a mancha de petróleo atinja a costa. Na tentativa de fazer uma reprodução do efeito desse produto em casa, um estudante prepara um recipiente contendo água e gotas de óleo de soja. Há disponível apenas azeite, vinagre, detergente, água sanitária e sal de cozinha.\r\n\r\nQual dos materiais disponíveis provoca uma ação semelhante à situação descrita? ', 8),
(23, 'O tratamento convencional da água, quando há, remove todas as impurezas? Não. À custa de muita adição de cloro, a água que abastece residências, escolas e trabalhos é bacteriologicamente segura. Os tratamentos disponíveis removem partículas e parte das substâncias dissolvidas, resultando em uma água transparente e, geralmente, inodora e insípida, mas não quimicamente pura. O processo de purificação da água compreende etapas distintas, que são: a decantação, a coagulação/floculação, a filtração, a desinfecção e a fluoretação.\r\n\r\nGUIMARÃES, J. R. D. Claro como a água? Disponível em: http://cienciahoje.uol.com.br. Acesso em: 2 abr. 2011 (adaptado).\r\n\r\n \r\n\r\nDentre as etapas descritas, são consideradas processos químicos: ', 8),
(24, 'De acordo com a legislação brasileira, são tipos de água engarrafada que podem ser vendidos no comércio para o consumo humano:\r\n\r\n \r\n\r\n- água mineral: água que, proveniente de fontes naturais ou captada artificialmente, possui composição química ou propriedades físicas ou físico-químicas específicas, com características que lhe conferem ação medicamentosa;\r\n\r\n- água potável de mesa: água que, proveniente de fontes naturais ou captada artificialmente, possui características que a tornam adequada ao consumo humano;\r\n\r\n- água purificada adicionada de sais: água produzida artificialmente por meio da adição à água potável de sais de uso permitido, podendo ser gaseificada.\r\n\r\n \r\n\r\nCom base nessas informações, conclui-se que ', 8),
(25, 'A lavoura arrozeira na planície costeira da região sul do Brasil comumente sofre perdas elevadas devido à salinização da água de irrigação, que ocasiona prejuízos diretos, como a redução de produção da lavoura. Solos com processo de salinização avançado não são indicados, por exemplo, para o cultivo de arroz. As plantas retiram a água do solo quando as forças de embebição dos tecidos das raízes são superiores às forças com que a água é retida no solo.\r\n\r\nWINKEL, H.L.; TSCHIEDEL, M. Cultura do arroz: salinização de solos em cultivos de arroz.\r\n\r\nDisponível em: http//agropage.tripod.com/saliniza.hml. Acesso em: 25 jun. 2010 (adaptado)\r\n\r\n \r\n\r\nA presença de sais na solução do solo faz com que seja dificultada a absorção de água pelas plantas, o que provoca o fenômeno conhecido por seca fisiológica, caracterizado pelo(a) ', 8),
(26, 'Alguns modelos mais modernos de fones de ouvido têm um recurso, denominado “cancelador de ruídos ativo”, constituído de um circuito eletrônico que gera um sinal sonoro semelhante ao sinal externo (ruído), exceto pela sua fase oposta.\r\n\r\n \r\n\r\nQual fenômeno físico é responsável pela diminuição do ruído nesses fones de ouvido?', 9),
(27, 'Ao ouvir uma flauta e um piano emitindo a mesma nota musical, consegue-se diferenciar esses instrumentos um do outro.\r\n\r\nEssa diferenciação se deve principalmente ao(a)', 9),
(28, 'Ao sintonizar uma estação de rádio AM, o ouvinte está selecionando apenas uma dentre as inúmeras ondas que chegam à antena receptora do aparelho. Essa seleção acontece em razão da ressonância do circuito receptor com a onda que se propaga.\r\n\r\n \r\n\r\nO fenômeno físico abordado no texto é dependente de qual característica da onda?', 9),
(29, 'Alguns cinemas apresentam uma tecnologia em que as imagens dos filmes parecem tridimensionais, baseada na utilização de óculos 3D. Após atravessar cada lente dos óculos, as ondas luminosas, que compõem as imagens do filme, emergem vibrando apenas na direção vertical ou apenas na direção horizontal.\r\n\r\n \r\n\r\nCom base nessas informações, o funcionamento dos óculos 3D ocorre por meio do fenômeno ondulatório de', 9),
(30, 'As moléculas de água são dipolos elétricos que podem se alinhar com o campo elétrico, da mesma forma que uma bússola se alinha com um campo magnético. Quando o campo elétrico oscila, as moléculas de água fazem o mesmo. No forno de micro-ondas, a frequência de oscilação do campo elétrico é igual à frequência natural de rotação das moléculas de água. Assim, a comida é cozida quando o movimento giratório das moléculas de água transfere a energia térmica às moléculas circundantes.\r\n\r\nHEWITT, P. Física conceitual. Porto Alegre: Bookman, 2002 (adaptado).\r\n\r\nA propriedade das ondas que permite, nesse caso, um aumento da energia de rotação das moléculas de água é a', 9),
(31, 'Algumas crianças, ao brincarem de esconde-esconde, tapam os olhos com as mãos, acreditando que, ao adotarem tal procedimento, não poderão ser vistas.\r\n\r\n \r\n\r\nEssa percepção da criança contraria o conhecimento científico porque, para serem vistos, os objetos', 10),
(32, 'As miragens existem e podem induzir à percepção de que há água onde não existe. Elas são a manifestação de um fenômeno óptico que ocorre na atmosfera.\r\n\r\nDisponível em: www.invivo.fiocruz.br. Acesso em: 29 fev. 2012.\r\n\r\n \r\n\r\nEsse fenômeno óptico é consequência da', 10),
(33, 'Será que uma miragem ajudou a afundar o Titanic? O fenômeno ótico conhecido como Fata Morgana pode fazer com que uma falsa parede de água apareça sobre o horizonte molhado. Quando as condições são favoráveis, a luz refletida pela água fria pode ser desviada por uma camada incomum de ar quente acima, chegando até o observador, vinda de muitos ângulos diferentes. De acordo com estudos de pesquisadores da Universidade de San Diego, uma Fata Morgana pode ter obscurecido os icebergs da visão da tripulação que estava a bordo do Titanic. Dessa forma, a certa distância, o horizonte verdadeiro fica encoberto por uma névoa escurecida, que se parece muito com águas calmas no escuro.\r\n\r\nDisponível em: http://apod.nasa.gov. Acesso em: 6 set. 2012 (adaptado).\r\n\r\n \r\n\r\nO fenômeno ótico que, segundo os pesquisadores, provoca a Fata Morgana é a', 10),
(34, 'Em mídias ópticas como CDs, DVDs e blue-rays, a informação é representada na forma de bits (zeros e uns) e é fisicamente gravada e lida por feixes de luz laser. Para gravar um valor “zero”, o laser brilha intensamente, de modo a “queimar” (tomar opaca) uma pequena área do disco, de tamanho comparável a seu comprimento de onda. Ao longo dos anos, as empresas de tecnologia vêm conseguindo aumentar a capacidade de armazenamento de dados em cada disco; em outras palavras, a área usada para se representar um bit vem se tornando cada vez mais reduzida.\r\n\r\n \r\n\r\nQual alteração da onda eletromagnética que constitui o Iaser permite o avanço tecnológico citado no texto?', 10),
(35, 'Uma proposta de dispositivo capaz de indicar a qualidade da gasolina vendida em postos e, consequentemente, evitar fraudes, poderia utilizar o conceito de refração luminosa. Nesse sentido, a gasolina não adulterada, na temperatura ambiente, apresenta razão entre os senos dos raios incidente e refratado igual a 1,4. Desse modo, fazendo incidir o feixe de luz proveniente do ar com um ângulo fixo e maior que zero, qualquer modificação no ângulo do feixe refratado indicará adulteração no combustível.\r\n\r\nEm uma fiscalização rotineira, o teste apresentou o valor de 1,9. Qual foi o comportamento do raio refratado?', 10),
(36, 'No seu estudo sobre a queda dos corpos, Aristóteles afirmava que se abandonarmos corpos leves e pesados de uma mesma altura, o mais pesado chegaria mais rápido ao solo. Essa ideia está apoiada em algo que é difícil de refutar, a observação direta da realidade baseada no senso comum.\r\n\r\nApós uma aula de física, dois colegas estavam discutindo sobre a queda dos corpos, e um tentava convencer o outro de que tinha razão:\r\n\r\nColega A: “O corpo mais pesado cai mais rápido que um menos pesado, quando largado de uma mesma altura. Eu provo, largando uma pedra e uma rolha. A pedra chega antes. Pronto! Tá provado!”.\r\n\r\nColega B: Eu não acho! Peguei uma folha de papel esticado e deixei cair. Quando amassei, ela caiu mais rápido. Como isso é possível? Se era a mesma folha de papel, deveria cair do mesmo jeito. Tem que ter outra explicação!”.\r\n\r\nHÜLSENDEGER, M. Uma análise das concepções dos alunos sobre a queda dos corpos. Caderno Brasileiro de Ensino de Física, n. 3, dez. 2004 (adaptado).\r\n\r\n \r\n\r\nO aspecto físico comum que explica a diferença de comportamento dos corpos em queda nessa discussão é o(a) ', 11),
(37, 'Uma empresa de transportes precisa efetuar a entrega de uma encomenda o mais breve possível. Para tanto, a equipe de logística analisa o trajeto desde a empresa até o local da entrega. Ela verifica que o trajeto apresenta dois trechos de distâncias diferentes e velocidades máximas permitidas diferentes. No primeiro trecho, a velocidade máxima permitida é de 80 km/h e a distância a ser percorrida é de 80 km. No segundo trecho, cujo comprimento vale 60 km, a velocidade máxima permitida é 120 km/h.\r\n\r\nSupondo que as condições de trânsito sejam favoráveis para que o veículo da empresa ande continuamente na velocidade máxima permitida, qual será o tempo necessário, em horas, para a realização da entrega?', 11),
(38, 'O trem de passageiros da Estrada de Ferro Vitória-Minas (EFVM), que circula diariamente entre a cidade de Cariacica, na Grande Vitória, e a capital mineira Belo Horizonte, está utilizando uma nova tecnologia de frenagem eletrônica. Com a tecnologia anterior, era preciso iniciar a frenagem cerca de 400 metros antes da estação. Atualmente, essa distância caiu para 250 metros, o que proporciona redução no tempo de viagem.\r\n\r\nConsiderando uma velocidade de 72 km/h, qual o módulo da diferença entre as acelerações de frenagem depois e antes da adoção dessa tecnologia?', 11),
(39, 'Em 20 de julho de 1969, Neil Armstrong tornou-se o primeiro homem a pisar na superfície da Lua. Ele foi seguido por Edwin Aldrin, ambos da missão Apollo 11. Eles, e os astronautas que os seguiram, experimentaram a ausência de atmosfera e estavam sujeitos às diferenças gravitacionais. A aceleração da gravidade na Lua tem 1/6 do valor na Terra.\r\n\r\n \r\n\r\nEm relação às condições na Terra, um salto oblíquo na superfície da Lua teria alcance', 11),
(40, 'Antes das lombadas eletrônicas, eram pintadas faixas nas ruas para controle da velocidade dos automóveis. A velocidade era estimada com o uso de binóculos e cronômetros. O policial utilizava a relação entre a distância percorrida e o tempo gasto, para determinar a velocidade de um veículo. Cronometrava-se o tempo que um veículo levava para percorrer a distância entre duas faixas fixas, cuja distância era conhecida. A lombada eletrônica é um sistema muito preciso, porque a tecnologia elimina erros do operador. A distância entre os sensores é de 2 metros, e o tempo é medido por um circuito eletrônico.\r\n\r\nO tempo mínimo, em segundos, que o motorista deve gastar para passar pela lombada eletrônica, cujo limite é de 40 km/h, sem receber uma multa, é de', 11),
(41, 'A preocupação com a sustentabilidade faz com que se procurem, cada vez mais, métodos eficientes para a economia de energia elétrica. Um procedimento que se pode adotar é a substituição das lâmpadas incandescentes por lâmpadas de LED nas residências. Uma lâmpada incandescente, que opera 8 horas por dia, foi substituída por uma de LED. Elas apresentam 60 W e 8 W de potência nominal de consumo, respectivamente.\r\n\r\n \r\n\r\nA redução do consumo de energia elétrica, em quilowatt-hora, obtida durante trinta dias foi', 12),
(42, 'Carregadores elétricos são projetados para fornecerem energia a baterias recarregáveis, como as usadas em aparelhos celulares e máquinas fotográficas. As especificações típicas de um desses dispositivos são:\r\n\r\n \r\n\r\nCarregador:\r\n\r\nEntrada AC 100-240 V / 200 mA / 50-60 Hz\r\n\r\nSaída DC 5,0 V / 1000 mA\r\n\r\n \r\n\r\nBateria recarregável:\r\n\r\n1,5 V / 4000 mAh\r\n\r\n \r\n\r\nUsando o carregador com corrente máxima, o tempo total de recarga dessa bateria totalmente descarregada, em hora, é', 12),
(43, 'No território brasileiro, existem períodos do ano que apresentam queda na umidade do ar, fazendo com que o ar fique bastante seco. Nessa época, é comum observar que as pessoas, ao saírem do carro e tocarem a maçaneta da porta, levam pequenos choques elétricos. Além disso, pessoas que ficam muito tempo em contato com aparelhos eletrodomésticos, ou que dormem com roupas feitas de determinados materiais, como a seda, ao tocarem objetos metálicos, também sentem as descargas elétricas, ou seja, levam um choque elétrico.\r\n\r\nO corpo humano sofre com esse fenômeno de descarga elétrica, comportando-se como um condutor, pois', 12),
(44, 'Carros elétricos estão cada vez mais baratos, no entanto, os órgãos governamentais e a indústria se preocupam com o tempo de recarga das baterias, que é muito mais lento quando comparado ao tempo gasto para encher o tanque de combustível. Portanto, os usuários de transporte individual precisam se conscientizar dos ganhos ambientais dessa mudança e planejar com antecedência seus percursos, pensando em pausas necessárias para recargas.\r\n\r\nApós realizar um percurso de 110 km, um motorista pretende recarregar as baterias de seu carro elétrico, que tem um desempenho médio de 5,0 km/kWh, usando um carregador ideal que opera a uma tensão de 220 V e é percorrido por uma corrente de 20 A.\r\n\r\n \r\n\r\nQuantas horas são necessárias para recarregar a energia utilizada nesse percurso? ', 12),
(45, 'Os manuais dos fornos micro-ondas desaconselham, sob pena de perda da garantia, que eles sejam ligados em paralelo juntamente a outros aparelhos eletrodomésticos por meio de tomadas múltiplas, popularmente conhecidas como “benjamins” ou “tês”, devido ao alto risco de incêndio e derretimento dessas tomadas, bem como daquelas dos próprios aparelhos.\r\n\r\nOs riscos citados são decorrentes da', 12),
(46, '(Enem-2015) Não acho que seja possível identificar a globalização apenas com a criação de uma economia global, embora este seja seu ponto focal e sua característica mais óbvia. Precisamos olhar além da economia. Antes de tudo, a globalização depende da eliminação de obstáculos técnicos, não de obstáculos econômicos. Isso tornou possível organizar a produção, e não apenas o comércio, em escala internacional.\r\n\r\nUm fator essencial para a organização da produção, na conjuntura destacada no texto, é a:\r\n', 13),
(47, '(Enem-2015) No final do século XX e em razão dos avanços da ciência, produziu-se um sistema presidido pelas técnicas da informação, que passaram a exercer um papel de elo entre as demais, unindo-as e assegurando ao novo sistema uma presença planetária. Um mercado que utiliza esse sistema de técnicas avançadas resulta nessa globalização perversa.\r\n\r\n\r\nUma consequência para o setor produtivo e outra para o mundo do trabalho advindas das transformações citadas no texto estão presentes, respectivamente, em:\r\n', 13),
(48, '(Enem-2015) Tanto potencial poderia ter ficado pelo caminho, se não fosse o reforço em tecnologia que um gaúcho buscou. Há pouco mais de oito anos, ele usava o bico da botina para cavoucar a terra e descobrir o nível de umidade do solo, na tentativa de saber o momento ideal para acionar os pivôs de irrigação.\r\nAté que conheceu uma estação meteorológica que, instalada na propriedade, ajuda a determinar a quantidade de água de que a planta necessita. Assim, quando inicia um plantio, o agricultor já entra no site do sistema e cadastra a área, o pivô, a cultura, o sistema de plantio, o espaçamento entre linhas e o número de plantas, para então receber recomendações diretamente dos técnicos da universidade.\r\n\r\n\r\nA implementação das tecnologias mencionadas no texto garante o avanço do processo de:\r\n', 13),
(49, '(Enem-2015) Um carro esportivo é financiado pelo Japão, projetado na Itália e montado em Indiana, México e França, usando os mais avançados componentes eletrônicos, que foram inventados em Nova Jérsei e fabricados na Coreia. A campanha publicitária é desenvolvida na Inglaterra, filmada no Canadá, a edição e as cópias, feitas em Nova York para serem veiculadas no mundo todo. Teias globais disfarçam-se com o uniforme nacional que lhes for mais conveniente.\r\n\r\n\r\n\r\nA viabilidade do processo de produção ilustrado pelo texto pressupõe o uso de:\r\n', 13),
(50, '(ENEM 2012) Na sociedade contemporânea, a globalização cultural é impulsionada pela mídia e pelas novas tecnologias de comunicação, permitindo a troca de ideias, valores e práticas culturais entre diferentes regiões do mundo.\r\n\r\nQual dos seguintes exemplos caracteriza um efeito da globalização cultural?\r\n', 13),
(51, 'A desigualdade social no Brasil é um fenômeno histórico que se manifesta em diversos aspectos da vida cotidiana. Entre os fatores que contribuem para a manutenção dessa desigualdade, está a concentração de renda e a falta de acesso a serviços essenciais.\r\n\r\nDiante desse contexto, uma das consequências da desigualdade social no Brasil é:\r\n', 14),
(52, 'A desigualdade social no Brasil é uma das mais altas do mundo. Essa situação se deve, entre outros fatores, à concentração de riqueza em um pequeno grupo de pessoas, enquanto a maioria da população tem acesso limitado aos recursos.\r\n\r\nUma das formas de atenuar essa desigualdade é por meio de:\r\n', 14),
(53, 'A sociedade contemporânea tem se caracterizado por uma intensificação das desigualdades econômicas e sociais, mesmo com o avanço da globalização e o aumento do acesso às tecnologias da informação.\r\n\r\nEssa intensificação das desigualdades pode ser explicada por qual dos seguintes fatores?\r\n', 14),
(54, 'A estratificação social refere-se à maneira como uma sociedade organiza grupos de indivíduos em camadas hierárquicas, de acordo com o acesso a bens, serviços, poder e prestígio.\r\n\r\nQual das alternativas abaixo exemplifica um fator que contribui para a perpetuação da estratificação social?\r\n', 14),
(55, 'O Brasil tem um histórico de desigualdade social que reflete em vários aspectos, inclusive na distribuição dos serviços de saúde e educação. A implementação de políticas públicas voltadas para a redução dessa desigualdade visa garantir a equidade de acesso a esses serviços.\r\n\r\nQual política pública abaixo exemplifica uma medida para reduzir a desigualdade social no Brasil?\r\n', 14),
(56, 'A cultura de um povo não é algo fixo e imutável, mas sim um processo dinâmico que se transforma ao longo do tempo. Esse processo é resultado de interações entre diferentes grupos sociais e a incorporação de novos elementos, sem que isso signifique perda de identidade cultural.\r\n\r\nEssa transformação da cultura pode ser explicada por:\r\n', 15),
(57, 'As diferentes culturas são constituídas por modos de vida, crenças, comportamentos e costumes que caracterizam os diversos grupos sociais ao redor do mundo. No entanto, o respeito à diversidade cultural nem sempre é observado, o que pode gerar conflitos e marginalização de certos grupos.\r\n\r\nA valorização da diversidade cultural implica:\r\n', 15),
(58, 'A globalização tem gerado um intenso processo de intercâmbio cultural entre diferentes países, o que levou ao surgimento de novas práticas culturais. Porém, isso também provoca um fenômeno de homogeneização cultural, no qual elementos de uma cultura dominante podem substituir ou sobrepor-se às culturas locais.\r\n\r\nEsse fenômeno é conhecido como:\r\n', 15),
(59, 'A diversidade cultural refere-se à multiplicidade de culturas que coexistem em um mesmo espaço ou em diferentes regiões. Ela inclui aspectos como língua, religião, arte, música e modos de vida. O Brasil, com sua formação histórica e miscigenação, é um exemplo de diversidade cultural, especialmente visível em suas manifestações artísticas e religiosas.\r\n\r\nO conceito de diversidade cultural implica:\r\n', 15),
(60, 'As sociedades contemporâneas são caracterizadas pela pluralidade cultural, com a presença de diversos grupos étnicos, religiosos e linguísticos. Essa diversidade, no entanto, nem sempre é bem compreendida ou valorizada, o que pode gerar discriminação e exclusão social.\r\n\r\nUma forma de promover o respeito à diversidade cultural nas sociedades é:\r\n', 15),
(61, 'A Constituição Federal de 1988 trouxe uma série de avanços em relação aos direitos e garantias individuais e coletivos, especialmente no que se refere à cidadania.\r\n\r\nSobre os direitos previstos na Constituição, é correto afirmar que:\r\n', 16),
(62, 'Os movimentos sociais são fundamentais para a luta pela cidadania e pelos direitos humanos. Ao longo da história, muitos movimentos contribuíram para a construção de uma sociedade mais justa e igualitária.\r\n\r\nUma das funções dos movimentos sociais é:\r\n', 16),
(63, 'Os direitos humanos são um conjunto de prerrogativas que visam garantir a dignidade e a liberdade de todos os indivíduos. O respeito a esses direitos é um dos pilares da cidadania.\r\n\r\nA atuação dos movimentos sociais em defesa dos direitos humanos é importante porque:', 16),
(64, 'O conceito de cidadania está intimamente relacionado ao exercício dos direitos civis, políticos e sociais. Movimentos sociais têm papel crucial na reivindicação desses direitos.\r\n\r\nUma característica dos movimentos sociais é:\r\n', 16),
(65, 'Movimentos sociais surgem em resposta a situações de injustiça, desigualdade e violação de direitos. A mobilização social é um aspecto importante na construção de uma sociedade mais justa.\r\n\r\nUma das consequências positivas da atuação de movimentos sociais é:\r\n', 16),
(66, 'Os pré-socráticos foram filósofos que buscavam entender a natureza e a origem do universo, propondo explicações racionais para fenômenos naturais.\r\n\r\nUm dos principais interesses dos pré-socráticos era:\r\n', 17),
(67, 'Sócrates é uma das figuras mais emblemáticas da filosofia ocidental. Sua abordagem filosófica era centrada na reflexão crítica e no diálogo.\r\n\r\nA famosa frase \"Conhece-te a ti mesmo\" é uma das máximas associadas a Sócrates. Essa frase reflete a importância da:\r\n', 17),
(68, 'Platão, discípulo de Sócrates, desenvolveu a teoria das Ideias ou Formas, onde ele distingue entre o mundo sensível e o mundo das ideias.\r\n\r\nPara Platão, as Ideias são:\r\n', 17),
(69, 'Aristóteles, um dos mais influentes filósofos da Antiguidade, trouxe contribuições significativas para diversas áreas do conhecimento, incluindo lógica, ética e política.\r\n\r\nAristóteles defendeu a ideia de que a felicidade é o objetivo último da vida humana. Essa felicidade é alcançada por meio:\r\n', 17),
(70, 'Os estoicos, uma escola de filosofia helenística, defendiam a importância da razão e do autocontrole como formas de alcançar a tranquilidade.\r\n\r\nSegundo os estoicos, a felicidade está relacionada a:\r\n', 17),
(71, 'A filosofia medieval foi marcada pela tentativa de conciliar a fé religiosa com a razão filosófica. Um dos principais pensadores desse período foi Santo Agostinho, que contribuiu significativamente para a reflexão sobre a relação entre Deus e o ser humano.\r\n\r\nPara Santo Agostinho, a busca pelo conhecimento está intrinsecamente ligada a:\r\n', 18),
(72, 'Tomás de Aquino, outro importante filósofo medieval, buscou integrar a filosofia aristotélica com a teologia cristã, propondo que a razão e a fé podem coexistir.\r\n\r\nUma das principais teses de Tomás de Aquino é que:\r\n', 18),
(73, 'A filosofia medieval é marcada pelo debate sobre a existência de Deus e as relações entre fé e razão.\r\n\r\nUma obra importante de Santo Tomás de Aquino, que apresenta cinco provas da existência de Deus, é:\r\n', 18),
(74, 'Durante a Idade Média, surgiram várias correntes filosóficas, entre as quais se destaca a escolástica, que buscava a síntese entre fé cristã e filosofia greco-romana.\r\n\r\nA escolástica se caracteriza por:\r\n', 18),
(75, 'A filosofia medieval também lidou com questões sobre a moralidade e a ética à luz da religião. Um pensador importante nesse contexto foi Guilherme de Ockham, conhecido por seu princípio da navalha de Ockham.\r\n\r\nO princípio da navalha de Ockham sugere que:\r\n', 18),
(76, 'O pensamento moderno trouxe novas abordagens sobre a razão, a natureza e o conhecimento. René Descartes, um dos filósofos mais influentes desse período, propôs a famosa frase \"Penso, logo existo\".\r\n\r\nEssa afirmação reflete a ideia de que:', 19),
(77, 'Immanuel Kant, um dos principais filósofos da modernidade, buscou responder a questões sobre a possibilidade do conhecimento humano e a moralidade.\r\n\r\nKant propôs que a moralidade deve ser baseada em:\r\n', 19),
(78, 'O empirismo, uma corrente filosófica que enfatiza a experiência sensorial como fonte do conhecimento, foi defendido por filósofos como John Locke e David Hume.\r\n\r\nUma das principais ideias do empirismo é que:\r\n', 19),
(79, 'Thomas Hobbes, em sua obra \"Leviatã\", apresenta uma visão pessimista da natureza humana e defende a necessidade de um governo forte.\r\n\r\nHobbes argumenta que, na ausência de um governo, os seres humanos vivem em um estado de:\r\n', 19),
(80, 'O filósofo Baruch Spinoza propôs uma visão de Deus e da natureza que desafiou a tradição teísta.\r\n\r\nPara Spinoza, Deus e a natureza são:\r\n', 19),
(81, 'A filosofia contemporânea é marcada por diversas correntes e pensadores que questionam a tradição e exploram novas áreas de reflexão. Um dos filósofos mais influentes dessa época é Jean-Paul Sartre, que é conhecido por suas contribuições ao existencialismo.\r\n\r\nUma das principais ideias de Sartre é que:\r\n', 20),
(82, 'O filósofo Michel Foucault é conhecido por suas análises sobre poder, saber e a construção social das identidades.\r\n\r\nUma das ideias centrais na obra de Foucault é que:\r\n', 20),
(83, 'A filosofia da linguagem contemporânea, particularmente influenciada por pensadores como Ludwig Wittgenstein, trouxe novas perspectivas sobre a relação entre linguagem e realidade.\r\n\r\nPara Wittgenstein, a linguagem é:\r\n', 20),
(84, 'O filósofo contemporâneo Jürgen Habermas é conhecido por suas contribuições à teoria da ação comunicativa e à esfera pública.\r\n\r\nHabermas defende que a comunicação racional é fundamental para:\r\n', 20),
(85, 'A filosofia feminista contemporânea questiona as estruturas sociais e culturais que perpetuam a desigualdade de gênero.\r\n\r\nUm dos principais objetivos da filosofia feminista é:', 20),
(86, 'A clonagem é um exemplo de biotecnologia que permite a obtenção de organismos geneticamente idênticos ao organismo original.\r\n\r\nA técnica de clonagem de animais, como a ovelha Dolly, envolve:\r\n', 21),
(87, 'A terapia gênica é uma técnica que visa o tratamento de doenças por meio da correção de genes defeituosos.\r\n\r\nA terapia gênica baseia-se na introdução de:\r\n', 21),
(88, 'Os organismos geneticamente modificados (OGMs) são amplamente utilizados na agricultura e na biotecnologia.\r\n\r\nOs OGMs são obtidos por meio da:\r\n', 21),
(89, 'A biotecnologia utiliza conhecimentos da biologia molecular e celular para criar novos produtos e processos.\r\n\r\nUm exemplo de aplicação biotecnológica que beneficia a saúde humana é:\r\n', 21),
(90, 'A utilização de células-tronco na medicina regenerativa é um dos avanços mais promissores da biotecnologia.\r\n\r\nAs células-tronco são importantes na biotecnologia porque:\r\n', 21),
(91, 'O sistema circulatório é responsável pelo transporte de substâncias pelo corpo humano.\r\n\r\nA função principal das hemácias no sistema circulatório humano é:\r\n', 22),
(92, 'O sistema digestório é responsável pela digestão e absorção de nutrientes.\r\n\r\nA digestão de proteínas ocorre principalmente no:\r\n', 22),
(93, 'O sistema nervoso humano é responsável pelo controle e coordenação das funções do corpo.\r\n\r\nOs neurônios transmitem impulsos nervosos através de:\r\n', 22),
(94, 'O sistema respiratório é responsável pela troca de gases entre o ambiente e o corpo humano.\r\n\r\nA troca de gases no sistema respiratório humano ocorre principalmente nos:\r\n', 22),
(95, 'O sistema excretor tem a função de eliminar resíduos metabólicos do corpo humano.\r\n\r\nOs rins desempenham um papel essencial no controle da homeostase ao:\r\n', 22),
(96, 'Os ciclos biogeoquímicos são fundamentais para a manutenção da vida na Terra.\r\n\r\nNo ciclo do carbono, o processo que retira o gás carbônico da atmosfera é:\r\n', 23),
(97, 'As relações ecológicas são as interações entre os seres vivos de uma comunidade.\r\n\r\nA relação entre o fungo e a alga que formam os líquens é classificada como:\r\n', 23),
(98, 'A sucessão ecológica é o processo de colonização e substituição progressiva de espécies em uma área.\r\n\r\nA primeira etapa de uma sucessão ecológica primária ocorre em:\r\n', 23),
(99, 'A teia alimentar é um conceito fundamental na ecologia, representando as relações tróficas entre os organismos de um ecossistema.\r\n\r\nOs decompositores têm um papel importante nas teias alimentares porque:\r\n', 23),
(100, 'A poluição das águas por esgoto doméstico e industrial pode causar a eutrofização dos ecossistemas aquáticos.\r\n\r\nA eutrofização é caracterizada por:\r\n', 23),
(101, 'As organelas celulares desempenham funções específicas dentro da célula.\r\n\r\nA organela responsável pela síntese de proteínas é:\r\n', 24),
(102, 'A membrana plasmática controla a entrada e saída de substâncias na célula.\r\n\r\nA estrutura da membrana plasmática é descrita pelo modelo de mosaico fluido, que se caracteriza pela:\r\n', 24),
(103, 'As mitocôndrias são organelas responsáveis pela produção de energia.\r\n\r\nNas mitocôndrias, a produção de energia ocorre através de:\r\n', 24),
(104, 'Os lisossomos são organelas envolvidas na digestão intracelular.\r\n\r\nA principal função dos lisossomos nas células é:\r\n', 24),
(105, 'O núcleo é o compartimento celular onde está o material genético das células eucarióticas.\r\n\r\nA função principal do núcleo celular é:\r\n', 24),
(111, '(ENEM 2019)\r\nEm uma liquidação, uma loja oferece um desconto de 20% em todos os seus produtos. Um cliente compra uma televisão que custa R$ 1.500,00. Qual será o valor pago por essa televisão após o desconto?\r\n', 27),
(112, '(ENEM 2018)\r\nEm uma escola, 60% dos 500 alunos participam de atividades esportivas. Quantos alunos não participam dessas atividades?\r\n', 27),
(113, '(ENEM 2017)\r\nUm eletrodoméstico sofreu duas reduções de preço consecutivas, cada uma de 10%. Se o preço inicial era R$ 1.000,00, qual será o preço final após as duas reduções?\r\n', 27),
(114, '(APPROVE)Em uma empresa, 40% dos funcionários são homens e o restante são mulheres. Se a empresa possui 120 funcionários, quantas mulheres trabalham nela?', 27),
(115, '(APPROVE)Um produto sofreu um aumento de 25%, passando a custar R$ 250,00. Qual era o preço do produto antes do aumento?', 27),
(116, '(ENEM 2018)\r\nUma receita para fazer uma torta utiliza 300 g de farinha de trigo para 4 porções. Para fazer 10 porções dessa torta, a quantidade de farinha de trigo necessária será:\r\n', 28),
(117, '(ENEM 2017)\r\nUm caminhão leva 8 horas para transportar uma carga com 6 motoristas trabalhando 8 horas por dia. Se o número de motoristas aumentar para 12, quantas horas serão necessárias para transportar a mesma carga, considerando que o número de horas trabalhadas por dia permanece o mesmo?\r\n', 28),
(118, '(ENEM 2015)\r\nEm uma gráfica, o custo para imprimir 1000 folhetos é R$ 400,00. Qual será o custo para imprimir 2500 folhetos, considerando que o custo é diretamente proporcional ao número de folhetos?\r\n', 28),
(119, '(APPROVE)Um pintor leva 6 dias para pintar uma casa trabalhando 5 horas por dia. Quantos dias ele levaria para pintar a mesma casa se trabalhasse 8 horas por dia?', 28),
(120, '(APPROVE)Uma fábrica produz 200 peças em 8 horas. Se a produção for aumentada para 300 peças, quanto tempo será necessário para produzir as peças?', 28),
(121, '(ENEM 2019)\r\nUma pessoa comprou uma camisa por R$ 50,00 e um par de calças por R$ 80,00. Sabendo que ela recebeu um desconto total de R$ 30,00 na compra, quanto ela pagou no total?\r\n', 29),
(122, '(ENEM 2018)\r\nO dobro de um número menos 7 é igual a 13. Qual é esse número?\r\n', 29),
(123, '(ENEM 2017)\r\nUma empresa de táxi cobra R$ 5,00 pela corrida mais R$ 2,00 por quilômetro rodado. Se uma corrida custou R$ 25,00, quantos quilômetros foram percorridos?', 29),
(124, '(APPROVE)A soma de um número com seu dobro é igual a 36. Qual é esse número?', 29),
(125, '(APPROVE)Um número subtraído de 15 resulta em 4 vezes esse número. Qual é o número?', 29),
(126, '(ENEM 2019)\r\nA área de um retângulo é dada pela expressão A=x2+5x+6A = x^2 + 5x + 6A=x2+5x+6, onde x é a medida do comprimento do lado. Qual é o valor de x para que a área seja igual a 6?', 30),
(127, '(ENEM 2018)\r\nO produto de dois números consecutivos é 72. Qual é o menor desses números?', 30),
(128, '(ENEM 2017)\r\nUma bola é lançada verticalmente para cima e sua altura em relação ao solo, em metros, após ttt segundos é dada por h(t)=−5t2+20th(t) = -5t^2 + 20th(t)=−5t2+20t. Qual é o instante em que a bola atinge a altura máxima?', 30),
(129, '(APPROVE)A soma de um número com o seu quadrado é igual a 30. Qual é o número?', 30),
(130, '(APPROVE)A diferença entre o quadrado de um número e o dobro desse número é 24. Qual é o número?', 30),
(131, '(ENEM 2019)\r\nA Pré-História é geralmente dividida em três períodos: Paleolítico, Neolítico e Idade dos Metais. Uma característica marcante do período Neolítico é:', 31),
(132, '(ENEM 2018)\r\nDurante o período Paleolítico, os seres humanos viviam em pequenos grupos e utilizavam ferramentas de pedra lascada para facilitar suas atividades diárias. Esse período também é conhecido por:', 31),
(133, '(ENEM 2017)\r\nA arte rupestre, encontrada em cavernas de várias partes do mundo, é uma característica importante da Pré-História. Essas pinturas indicam que os primeiros seres humanos:', 31),
(134, '(APPROVE)A Idade dos metais foi marcada por uma grande transformação na vida humana,  Qual foi o principal impacto dessa revolução?', 31),
(135, '(APPROVE)Durante o período Paleolítico, os seres humanos utilizavam a pedra lascada como principal material para a fabricação de ferramentas. Qual era a principal função dessas ferramentas?', 31),
(136, '(ENEM 2019)\r\nDurante o período colonial, a África foi dividida por potências europeias que traçaram fronteiras artificiais, muitas vezes sem considerar as divisões étnicas e culturais locais. Esse processo é conhecido como:', 32),
(137, '(ENEM 2018)\r\nA respeito do comércio transatlântico de escravos, é correto afirmar que:', 32),
(138, '(ENEM 2017)\r\nO Apartheid foi um regime de segregação racial instituído na África do Sul no século XX. Esse regime:', 32),
(139, '(APPROVE)O movimento Pan-africanista surgiu com o objetivo de unir os povos africanos e seus descendentes em todo o mundo. Qual era uma das principais propostas desse movimento?', 32),
(140, '(APPROVE)O Reino de Gana, um dos grandes impérios africanos da Idade Média, era conhecido principalmente por:', 32),
(141, '(ENEM 2019)\r\nO Primeiro Reinado no Brasil foi marcado pela abdicação de D. Pedro I. Qual foi um dos principais fatores que levaram a essa abdicação?', 33),
(142, '(ENEM 2018)\r\nDurante o Primeiro Reinado, a Constituição de 1824 foi promulgada. Quais eram as características dessa Constituição?', 33),
(143, '(ENEM 2017)\r\nA independência do Brasil foi proclamada por D. Pedro I em 7 de setembro de 1822, e o Primeiro Reinado se seguiu. Qual foi um dos principais desafios enfrentados pelo imperador durante esse período?', 33),
(144, 'A abdicação de D. Pedro I em 1831 foi um momento importante na história do Brasil. Qual foi uma das consequências diretas dessa abdicação?', 33),
(145, 'Durante o Primeiro Reinado, D. Pedro I foi acusado de autoritarismo. Qual foi uma das ações que contribuíram para essa imagem?', 33),
(146, '(ENEM 2018)\r\nO Segundo Reinado (1840-1889) no Brasil é caracterizado por um período de estabilidade política e crescimento econômico. Qual das opções a seguir melhor descreve um dos fatores que contribuíram para essa estabilidade?', 34),
(147, '(ENEM 2017)\r\nDurante o Segundo Reinado, diversas mudanças sociais e econômicas ocorreram no Brasil. Um dos eventos marcantes desse período foi a abolição da escravatura. Qual foi a Lei que aboliu a escravidão no Brasil?', 34),
(148, '(ENEM 2016)\r\nO Segundo Reinado foi um período de importantes transformações na sociedade brasileira. A industrialização e o crescimento das cidades foram impulsionados por qual fator econômico significativo nesse período?', 34),
(149, '(APPROVE)Durante o Segundo Reinado, a política de \"Política dos Acordos\" buscava promover a estabilidade política no Brasil. Essa política era baseada na:', 34);
INSERT INTO `perguntas` (`pergunta_id`, `enunciado`, `questionario_id`) VALUES
(150, '(APPROVE)A economia brasileira durante o Segundo Reinado passou por diversas transformações. Um dos setores que mais cresceu nesse período foi:', 34),
(151, 'Selecione a forma correta do Verbo To Be para preencher a seguinte sentença: \r\nHi! My name _ Mary, I _ 17 years old and I _ from Brazil. I have two dogs, and they _ playing in the garden right now. I also have a brother, _ name _ Luke.', 35),
(152, ' Assinale a sentença que está na ordem correta:', 35),
(153, 'Assinale qual das sentenças na forma negativa está correta:', 35),
(154, 'Assinale qual das sentenças na forma interrogativa está correta:', 35),
(155, 'Assinale qual das seguintes frases está descrita de maneira errada:', 35),
(156, 'Como se diz \"Olá, bom dia! Como você está?\"', 36),
(157, 'Qual é a tradução correta de \"Where are you from?\" ', 36),
(158, 'No inglês, quando alguém questiona nossa idade, qual é a maneira correta de se responder?', 36),
(159, 'Assinale a alternativa incorreta:\r\n', 36),
(160, 'Como se escrevem os números 4,8,60 e 100 respectivamente em inglês?', 36),
(161, 'Tennessee Mountain Properties\r\nDescription\r\nOwn a renovated house for less than $290 per month!!!!!!!! New windows, siding, flooring (laminate throughout and tile in entry way and bathroom), kitchen cabinets, counter top, back door, fresh paint and laundry on main floor. Heat bills are very low due to a good solid house and an energy efficient furnace.\r\n\r\nEm jornais, há diversos anúncios que servem aos leitores. O conteúdo do anúncio veiculado por este texto interessará a alguém que esteja procurando:\r\n', 37),
(162, 'Our bodies produce a small steady amount of natural morphine, a new study suggests. Traces of the chemical are often found in mouse and human urine, leading scientists to wonder whether the drug is being made naturally or being delivered by something the subjects consumed. The new research shows that mice produce the “incredible painkiller” – and that humans and other mammals possess the same chemical road map for making it, said study co-author Meinhart Zenk, who studies plant-based pharmaceuticals at the Donald Danforth Plant Science Center in St. Louis, Missouri.\r\n\r\nAo ler a matéria publicada na National Geographic para a realização de um trabalho escolar, um estudante descobriu que:', 37),
(163, 'Quotes of the Day\r\n\r\nFriday, Sep. 02, 2011\r\n\r\n“There probably was a shortage of not just respect and boundaries but also love. But you do need, when they cross the line and break the law, to be very tough.”\r\nBritish Prime Minister DAVID CAMERON, arguing that those involved in the recent riots in England need “tough love” as he vows to “get to grips” with the country’s problem families.\r\n\r\nA respeito dos tumultos causados na Inglaterra em agosto de 2011, as palavras de alerta de David Cameron têm como foco principal:\r\n', 37),
(164, 'THE DEATH OF THE PC\r\n\r\nThe days of paying for costly software upgrades are numbered. The PC will soon be obsolete. And BusinessWeek reports 70% of Americans are already using the technology that will replace it. Merrill Lynch calls it “a $160 billion tsunami”. Computing giants including IBM, Yahoo!, and Amazon are racing to be the first to cash in on this PC-killing revolution.\r\nYet, two little-known companies have a huge head start. Get their names in a free report from The Motley Fool called, “The Two Words Bill Gates Doesn’t Want You to Hear…”\r\n\r\nAo optar por ler a reportagem completa sobre o assunto anunciado, tem-se acesso a duas palavras que Bill Gates não quer que o leitor conheça e que se referem:', 37),
(165, 'The Road Not Taken (by Robert Frost)\r\nTwo roads diverged in a wood, and I —\r\nI took the one less traveled by,\r\nAnd that has made all the difference.\r\n\r\nEstes são os versos finais do famoso poema The Road Not Taken, do poeta americano Robert Frost. Levando-se em consideração que a vida é comumente metaforizada como uma viagem, esses versos indicam que o autor:', 37),
(166, 'El lago\r\n\r\nTú no recuerdas el día que te vi por primera vez, igual\r\nque el mar no recuerda la primera vez que lo miramos. No\r\nme refiero a la fecha, los recuerdos no necesitan burocracia.Me refiero a cómo te besé para siempre en mi mirada, dentro de mi imaginación, como si así jamás pudiera volver a desasirme de tu imagen, sin quererla hacer mía, tan solo contemplándola, envolviéndome con ella como el cielo se envuelve de la noche. Tampoco me refiero al lugar, ni a lo que estábamos haciendo allí, pues te miré desde lo alto de todas las palabras, que dejaron de significar, te hundí en el\r\nfondo del oscuro lago de mis pupilas sin que te dieses cuenta. Bañada de su inmenso silencio te convertí en un sueño. Ya no hube de esperarte nunca. [...]\r\n\r\nPodemos inferir do segundo parágrafo:', 38),
(167, 'Teresa Romero, la enfermera, no ha podido cumplir su promesa de no volver a comparecer ante la prensa hasta que esté totalmente recuperada. Ya en casa de su madre,en el pueblo lucense de Becerreá, la auxiliar de enfermería, que el miércoles fue dada de alta del Hospital Carlos III tras superar el ébola que padecía, se ha visto obligada este jueves a atender a los periodistas que se agolpaban a las puertas del domicilio familiar. “Cuando estaba más mala yno me dejaban beber agua, soñaba con los postres de mi mamá”, ha confesado en una breve aparición, acompañada de su marido, Javier Limón, y su madre, Jesusa Ramos, y ha asegurado que lo que más le apetece es “dar un paseo”. Su madre, en tanto, no ha podido evitar opinar que, para su gusto, su hija se ve “muy débil” y “muy flaquita”.\r\n\r\nSobre o texto, é correto afirmar:', 38),
(168, 'La Alianza del Pacífico se da hasta el 30 de junio para acordar el desarme arancelario\r\n\r\nMientras avanza en la integración, se abre la puerta a nuevos socios. El primero será Costa Rica, con quien se ha acordado abrir conversaciones formales de adhesión, después de que su presidenta, Laura Chinchilla, firmara el miércoles un acuerdo de libre comercio con Santos, lo que era requisito previo. La lista de países observadores se ha ampliado com Francia, Portugal, Ecuador, El Salvador, Honduras, Paraguay y República Dominicana; lo que eleva a 16 los países que tienen tal condición. Los mandatarios se felicitaron del acercamiento de Quito, formalmente encuadrada en el eje bolivariano, en las antípodas ideológicas de la Alianza.\r\n\r\nAssinale o significado correto, em português, da palavra em destaque: “ Mientras avanza en la integración, se abre la puerta a nuevos socios.”', 38),
(169, 'Las tapas son un elemento esencial de la cultura española. Uno de los principales rasgos de la gastronomía española es el tapeo. Las tapas son pequeñas cantidades de comida que se sirven en los bares para acompañar una bebida. En España es muy común ir de tapas: una tradición que consiste en ir de bar en bar con amigos a comer y a beber (normalmente cerveza o vino). El origen de esta tradición no está muy claro y existen diversas explicaciones.\r\n\r\n\r\nSegundo o texto, a palavra rasgos, destacada em negrito, pode ser traduzida sem alteração de significado por:', 38),
(170, 'Términos como “posverdad”, “chusmear” y “táper”, además de extranjerismos como \"fair play”, “halaí’, “hummus” y “hackei\", figuran entre las novedades del diccionario digital de Ia Real Academia Española de Ia lengua, que decidió incorporar términos muy extendidos y en primera línea de Ia actualidad. El diccionario incorpora en total 3345 modificaciones, entre adiciones de palabras, acepciones nuevas, matizaciones y supresiones de términos en desuso. Los numerosos cambios incluyen Ia incorporación al léxico español de extranjerismos procedentes de varias lenguas.\r\n\r\nCom base no conteúdo do texto, pode-se afirmar que ele tem como principal objetivo:', 38),
(171, 'Como se diz os seguintes pronomes (Eu, ele, isso, nós) respectivamente em espanhol:', 39),
(172, 'Qual é a forma correta de escrevermos uma pergunta em espanhol?', 39),
(173, 'Qual é a diferença entre \"Tú\" e \"usted\"?', 39),
(174, 'Assinale a alternativa correta que traduza corretamente a frase: \"Buenos días! ¿Cómo estás?\"', 39),
(175, 'Como se diz \"Olá, me chamo Julie! Prazer em conhecê-lo\" em espanhol?', 39),
(176, 'Como eu digo \"Como você está?\" de maneira formal?', 40),
(177, 'Como eu digo \"eu sou do Brasil\" em espanhol?', 40),
(178, 'Como se diz \"Quantos anos você tem?\" em espanhol?', 40),
(179, 'Como eu digo \"Até amanhã!\" em espanhol?', 40),
(180, 'Como se escrevem os números 2,8,40 e 1000 respectivamente em espanhol? ', 40);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pontuacoes`
--

CREATE TABLE `pontuacoes` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `materia_id` int(11) DEFAULT NULL,
  `pontos` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pontuacoes`
--

INSERT INTO `pontuacoes` (`id`, `usuario_id`, `materia_id`, `pontos`) VALUES
(16, 21, NULL, 5),
(21, 29, NULL, 480),
(22, 31, NULL, 730),
(23, 33, NULL, 60),
(24, 30, NULL, 230),
(25, 32, NULL, 30),
(26, 34, NULL, 666),
(27, 35, NULL, 230),
(28, 37, NULL, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `questionarios`
--

CREATE TABLE `questionarios` (
  `questionario_id` int(11) NOT NULL,
  `subconteudo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `questionarios`
--

INSERT INTO `questionarios` (`questionario_id`, `subconteudo_id`) VALUES
(3, NULL),
(4, 1),
(27, 1),
(29, 2),
(30, 3),
(28, 4),
(5, 13),
(7, 14),
(6, 15),
(8, 16),
(32, 21),
(31, 22),
(33, 23),
(34, 24),
(9, 43),
(10, 44),
(11, 45),
(12, 46),
(13, 49),
(14, 50),
(15, 51),
(16, 52),
(36, 53),
(35, 54),
(37, 55),
(39, 56),
(38, 57),
(40, 58),
(19, 59),
(18, 60),
(20, 61),
(17, 62),
(21, 63),
(22, 64),
(23, 65),
(24, 66);

-- --------------------------------------------------------

--
-- Estrutura para tabela `respostas_questionarios`
--

CREATE TABLE `respostas_questionarios` (
  `usuario_id` int(11) NOT NULL,
  `questionario_id` int(11) NOT NULL,
  `resposta_questionario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `respostas_questionarios`
--

INSERT INTO `respostas_questionarios` (`usuario_id`, `questionario_id`, `resposta_questionario_id`) VALUES
(29, 10, 35),
(29, 10, 36),
(30, 36, 68),
(30, 36, 69),
(31, 5, 29),
(31, 5, 30),
(32, 5, 37),
(32, 5, 38),
(32, 7, 33),
(32, 7, 34),
(32, 8, 31),
(32, 8, 32),
(32, 29, 52),
(32, 29, 53),
(32, 35, 56),
(32, 35, 57),
(32, 36, 54),
(32, 36, 55),
(32, 37, 58),
(32, 37, 59),
(32, 38, 62),
(32, 38, 63),
(32, 39, 60),
(32, 39, 61),
(32, 40, 64),
(32, 40, 65),
(33, 13, 48),
(33, 13, 49),
(33, 14, 50),
(33, 14, 51),
(33, 19, 39),
(33, 19, 40),
(33, 19, 41),
(33, 22, 42),
(33, 22, 43),
(33, 23, 44),
(33, 23, 45),
(33, 24, 46),
(33, 24, 47),
(34, 5, 9),
(34, 5, 10),
(34, 7, 11),
(34, 7, 12),
(35, 5, 13),
(35, 5, 14),
(35, 6, 27),
(35, 6, 28),
(35, 7, 15),
(35, 7, 16),
(35, 8, 17),
(35, 8, 18),
(35, 9, 19),
(35, 9, 20),
(35, 10, 21),
(35, 10, 22),
(35, 11, 23),
(35, 11, 24),
(35, 12, 25),
(35, 12, 26),
(37, 35, 66),
(37, 35, 67);

-- --------------------------------------------------------

--
-- Estrutura para tabela `respostas_usuarios`
--

CREATE TABLE `respostas_usuarios` (
  `resposta_id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `pergunta_id` int(11) DEFAULT NULL,
  `alternativa_id` int(11) DEFAULT NULL,
  `correta` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `respostas_usuarios`
--

INSERT INTO `respostas_usuarios` (`resposta_id`, `usuario_id`, `pergunta_id`, `alternativa_id`, `correta`) VALUES
(1406, 21, 1, 2, 1),
(1407, 21, 2, 8, 1),
(1408, 21, 3, 15, 1),
(1409, 21, 4, 18, 0),
(1410, 21, 5, 23, 0),
(1613, 34, 6, 31, 0),
(1614, 34, 7, 36, 0),
(1615, 34, 8, 41, 0),
(1616, 34, 9, 26, 1),
(1617, 34, 10, 46, 0),
(1618, 34, 16, 76, 1),
(1619, 34, 17, 81, 0),
(1620, 34, 18, 86, 0),
(1621, 34, 19, 91, 1),
(1622, 34, 20, 96, 0),
(1623, 35, 6, 33, 1),
(1624, 35, 7, 39, 0),
(1625, 35, 8, 42, 0),
(1626, 35, 9, 28, 0),
(1627, 35, 10, 49, 1),
(1628, 35, 16, 76, 1),
(1629, 35, 17, 83, 1),
(1630, 35, 18, 89, 1),
(1631, 35, 19, 91, 1),
(1632, 35, 20, 99, 1),
(1633, 35, 21, 103, 1),
(1634, 35, 22, 108, 1),
(1635, 35, 23, 113, 1),
(1636, 35, 24, 116, 1),
(1637, 35, 25, 121, 1),
(1638, 35, 26, 129, 1),
(1639, 35, 27, 134, 1),
(1640, 35, 28, 138, 1),
(1641, 35, 29, 145, 1),
(1642, 35, 30, 148, 1),
(1643, 35, 31, 151, 1),
(1644, 35, 32, 156, 1),
(1645, 35, 33, 161, 0),
(1646, 35, 34, 167, 1),
(1647, 35, 35, 172, 0),
(1648, 35, 36, 177, 1),
(1649, 35, 37, 183, 1),
(1650, 35, 38, 186, 0),
(1651, 35, 39, 194, 1),
(1652, 35, 40, 197, 0),
(1653, 35, 41, 209, 1),
(1654, 35, 42, 213, 1),
(1655, 35, 43, 217, 1),
(1656, 35, 44, 224, 1),
(1657, 35, 45, 202, 1),
(1658, 35, 11, 70, 1),
(1659, 35, 12, 57, 1),
(1660, 35, 13, 72, 1),
(1661, 35, 14, 62, 0),
(1662, 35, 15, 54, 0),
(1663, 31, 6, 33, 1),
(1664, 31, 7, 39, 0),
(1665, 31, 8, 44, 1),
(1666, 31, 9, 26, 1),
(1667, 31, 10, 49, 1),
(1668, 32, 21, 103, 1),
(1669, 32, 22, 108, 1),
(1670, 32, 23, 113, 1),
(1671, 32, 24, 116, 1),
(1672, 32, 25, 121, 1),
(1673, 32, 16, 76, 1),
(1674, 32, 17, 83, 1),
(1675, 32, 18, 89, 1),
(1676, 32, 19, 91, 1),
(1677, 32, 20, 96, 0),
(1678, 29, 31, 151, 1),
(1679, 29, 32, 160, 0),
(1680, 29, 33, 162, 1),
(1681, 29, 34, 168, 0),
(1682, 29, 35, 175, 1),
(1683, 32, 6, 31, 0),
(1684, 32, 7, 36, 0),
(1685, 32, 8, 41, 0),
(1686, 32, 9, 26, 1),
(1687, 32, 10, 46, 0),
(1688, 33, 76, 376, 1),
(1689, 33, 77, 382, 0),
(1690, 33, 78, 387, 0),
(1691, 33, 79, 392, 0),
(1692, 33, 80, 397, 1),
(1693, 33, 76, 380, 0),
(1694, 33, 77, 385, 0),
(1695, 33, 78, 390, 0),
(1696, 33, 79, 395, 0),
(1697, 33, 80, 400, 0),
(1698, 33, 91, 455, 0),
(1699, 33, 92, 460, 0),
(1700, 33, 93, 465, 0),
(1701, 33, 94, 470, 0),
(1702, 33, 95, 475, 0),
(1703, 33, 96, 480, 0),
(1704, 33, 97, 485, 0),
(1705, 33, 98, 490, 0),
(1706, 33, 99, 495, 0),
(1707, 33, 100, 500, 0),
(1708, 33, 101, 505, 0),
(1709, 33, 102, 510, 0),
(1710, 33, 103, 515, 0),
(1711, 33, 104, 520, 0),
(1712, 33, 105, 525, 0),
(1713, 33, 46, 230, 0),
(1714, 33, 47, 235, 1),
(1715, 33, 48, 240, 0),
(1716, 33, 49, 245, 0),
(1717, 33, 50, 250, 0),
(1718, 33, 51, 255, 0),
(1719, 33, 52, 260, 0),
(1720, 33, 53, 265, 0),
(1721, 33, 54, 270, 0),
(1722, 33, 55, 275, 0),
(1723, 32, 121, 576, 0),
(1724, 32, 122, 581, 0),
(1725, 32, 123, 586, 1),
(1726, 32, 124, 591, 0),
(1727, 32, 125, 596, 0),
(1728, 32, 156, 746, 0),
(1729, 32, 157, 750, 0),
(1730, 32, 158, 754, 1),
(1731, 32, 159, 758, 0),
(1732, 32, 160, 762, 0),
(1733, 32, 151, 726, 0),
(1734, 32, 152, 730, 0),
(1735, 32, 153, 734, 0),
(1736, 32, 154, 738, 0),
(1737, 32, 155, 742, 1),
(1738, 32, 161, 766, 0),
(1739, 32, 162, 770, 0),
(1740, 32, 163, 774, 0),
(1741, 32, 164, 778, 1),
(1742, 32, 165, 782, 0),
(1743, 32, 171, 806, 1),
(1744, 32, 172, 810, 0),
(1745, 32, 173, 814, 1),
(1746, 32, 174, 818, 0),
(1747, 32, 175, 822, 0),
(1748, 32, 166, 826, 0),
(1749, 32, 167, 830, 0),
(1750, 32, 168, 834, 0),
(1751, 32, 169, 838, 1),
(1752, 32, 170, 842, 1),
(1753, 32, 176, 786, 0),
(1754, 32, 177, 790, 0),
(1755, 32, 178, 794, 1),
(1756, 32, 179, 798, 0),
(1757, 32, 180, 802, 0),
(1758, 37, 151, 729, 0),
(1759, 37, 152, 733, 0),
(1760, 37, 153, 737, 0),
(1761, 37, 154, 741, 1),
(1762, 37, 155, 745, 0),
(1763, 30, 156, 747, 0),
(1764, 30, 157, 752, 0),
(1765, 30, 158, 756, 0),
(1766, 30, 159, 760, 0),
(1767, 30, 160, 764, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `subconteudos`
--

CREATE TABLE `subconteudos` (
  `subconteudo_id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `materia_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `subconteudos`
--

INSERT INTO `subconteudos` (`subconteudo_id`, `nome`, `materia_id`) VALUES
(1, 'Porcentagem', 2),
(2, 'Equação do 1° grau', 2),
(3, 'Equação do 2° grau', 2),
(4, 'Regra de Três', 2),
(5, 'Interpretação de texto', 1),
(6, 'Gêneros textuais', 1),
(7, 'Variedade línguistica', 1),
(8, 'Figuras de linguagem', 1),
(13, 'Estequiometria', 4),
(14, 'Funções inorgânicas', 4),
(15, 'Termoquímica', 4),
(16, 'Água e suas propriedades', 4),
(21, 'História da África', 6),
(22, 'Pré-História', 6),
(23, 'Primeiro Reinado', 6),
(24, 'Segunda Reinado', 6),
(25, 'Urbanização', 7),
(26, 'Meio Ambiente', 7),
(27, 'Demografia', 7),
(28, 'Cartografia', 7),
(43, 'Ondulatória', 5),
(44, 'Óptica', 5),
(45, 'Cinemática', 5),
(46, 'Eletrodinâmica', 5),
(48, 'Geopolítica', 7),
(49, 'Globalização e Sociedade Contemporânea', 9),
(50, 'Estratificação e desigualdade social', 9),
(51, 'Cultura e Diversidade Cultural', 9),
(52, 'Cidadania e Movimentos Sociais', 9),
(53, 'Vocabulário e números', 10),
(54, 'Verb to be', 10),
(55, 'Interpretação de texto', 10),
(56, 'Artigos e pronomes', 11),
(57, 'Interpretação de texto', 11),
(58, 'Expressões comuns', 11),
(59, 'Filosofia Moderna', 8),
(60, 'Filosofia Medieval', 8),
(61, 'Filosofia Contemporânea', 8),
(62, 'Filosofia Antiga', 8),
(63, 'Genética e Biotecnologia', 3),
(64, 'Fisiologia Humana', 3),
(65, 'Ecologia', 3),
(66, 'Citologia', 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile_pic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `username`, `email`, `password`, `profile_pic`) VALUES
(21, 'Sarah Cristina ', 'sarahcristinaribeiro476@gmail.com', 'shkty7574', ''),
(29, 'Nicolas Garcia', 'nicolas535.garciass@gmail.com', '$2y$10$JKXQnJVyx8cj.BwdlM/fkOMwypUxBjdgQ/5iJoX7DFa9bx62EeJeS', '../../assets/img/uploads/IMG_20230807_203500_010 (1).png'),
(30, 'Vinícius de Paiva', 'vinicius@gmail.com', '$2y$10$rucxzTv51N0JIK5Grbd5z.kpg9T5AfdBk7/7SK.OwjAulPvWynOOi', '../../assets/img/uploads/670c838e9600d5.73625134.png'),
(31, 'Júlia Araújo', 'julia@gmail.com', '$2y$10$RNhwA5SZrxhC8DWl8YlVCuxbMcl7C9/d.vQXbWJeFIZi1zthdQ4Me', '../../assets/img/uploads/670c83ddbfbd02.95118576.png'),
(32, 'Victor Marques', 'victor@gmail.com', '$2y$10$RgvC0qbOBkJxd3tYNR/z1ehTgeOhn55VHf2SKI24a0s3GZ6KsGuLy', '../../assets/img/uploads/670c8417650212.75929906.png'),
(33, 'Guilherme Leme', 'guilherme@gmail.com', '$2y$10$dF/R3hQBZjFHw5RXxEEzXuIf6rLXr7f.UdIwilg8fDM1JvjObDYg2', '../../assets/img/uploads/670c8439d9a0e2.99998755.png'),
(34, 'Matuê', '30praum@gmail.com', '$2y$10$CWKavMzYNPa.ZQj0kzC9mObgE5r0qec9fupUwgnv/QW5whZkxkHfi', '../../assets/img/uploads/670c87a3608858.38159980.png'),
(35, 'Neymar Jr', 'neymar@gmail.com', '$2y$10$jvEuGmTgEgZ5jRxbA7K1H.2C0PQtAGKAA33KVeSl85xftmHHymtx.', '../../assets/img/uploads/670d2602bc5558.37249344.png'),
(36, 'vini', 'vini.pms@gmail.com', '$2y$10$xTvEsEXU/VTkvt9M6Fg/WONtBeiMI2iRvDFfebLvaaFFOOjHHDYvS', '../../assets/img/uploads/67100444dac147.04794127.png'),
(37, 'apresentação', 'apresentacao@gmail.com', '$2y$10$0MdsNLZPwgSL2wMrNE2m7e02IHg4c5L0/0RXsKY0tp03ICSibplYe', '../../assets/img/uploads/67178230a211f8.09239537.jpg'),
(38, 'testeapi', 'usuario@example.com', '$2y$10$DMVP0kIOyWyHLJAgV03nF.VM2kEzijvWbhPsbfhjq2DgHvI3gTMGq', ''),
(40, 'testeapi2', 'usuario2@example.com', '$2y$10$x1xLQHXD8XBSfb9ZNwsYierLdefWkv/LvIn0cMr9VFHnqjAoUUR22', ''),
(43, 'api', 'api@email.com', '$2y$10$f08hXI76djPMP1uZg72mW.8zoKOjDzMr7yhXMEFBMAmjJ2fAw81LK', ''),
(44, 'testeapi22', 'usuario22@example.com', '$2y$10$n6OOYjl.X0yD1ngILkIBPOWOCQ5G62BMOu3kiZRyzELn2PFzU84UK', ''),
(48, 'testeapi223', 'usuario223@example.com', '$2y$10$V/RZ4PPfoEDL.j/f0B8gAu9LouiAXFCwkllVWaQQrPj2ThA4dei72', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `videoaulas`
--

CREATE TABLE `videoaulas` (
  `videoaula_id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `subconteudo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `videoaulas`
--

INSERT INTO `videoaulas` (`videoaula_id`, `titulo`, `url`, `subconteudo_id`) VALUES
(2, 'ÓPTICA', 'https://youtu.be/Vvr1lR8px9U', 44),
(3, 'ELETRODINÂMICA', 'https://youtu.be/1WgJr_ccPF8', 46),
(4, 'CINEMÁTICA', 'https://youtu.be/YQ4TbFYRhfs', 45),
(6, 'ONDULATÓRIA', 'https://youtu.be/UD3MqVHo07I', 43),
(7, 'ESTEQUIOMETRIA', 'https://youtu.be/NKof_Khxf1I', 13),
(8, 'FUNÇÕES INORGÂNICAS', 'https://youtu.be/fhIkc8ljhsE', 14),
(9, 'TERMOQUÍMICAS', 'https://youtu.be/MqXxYz-ly8U', 15),
(10, 'AGUA E SUAS PROPRIEDADES', 'https://youtu.be/OQJ6glp3tis', 16),
(11, 'EQUAÇÃO DO PRIMEIRO GRAU', 'https://youtu.be/6Y9CL4nuEhg', 2),
(12, 'EQUAÇÃO DO SEGUNDO GRAU', 'https://youtu.be/YPQR4I5wR7k', 3),
(13, 'PORCENTAGEM', 'https://www.youtube.com/watch?v=JyETRAKCUW8', 1),
(14, 'REGRA DE TRÊS', 'https://www.youtube.com/watch?v=OThpEr1cMrQ', 4),
(15, 'PRÉ-HISTORIA', 'https://www.youtube.com/watch?v=4EdDKzcnXjs', 22),
(16, 'Filosofia Medieval', 'https://youtu.be/_ZygFB0x7Y4', 60),
(17, 'FILOSOFIA MODERNA', 'https://youtu.be/sKJG3gld_J8', 59),
(18, 'FILOSOFIA ANTIGA', 'https://youtu.be/3P8d-_3KoLo', 62),
(19, 'VERB TO BE', 'https://youtu.be/FdqYqwKb2zE', 54),
(20, 'VOCABULÁRIO BÁSICO', 'https://youtu.be/nEj2uscuxv4', 53),
(21, 'INTERPRETAÇÃO DE TEXTO', 'https://youtu.be/CbOH7EgMLhk', 55),
(22, 'ARTIGOS E PRONOMES', 'https://youtu.be/qVj4k_E0qBM', 56),
(23, 'EXPRESSÕES COMUNS', 'https://youtu.be/VBZ6Pqm88bI', 58),
(24, 'INTERPRETAÇÃO DE TEXTO', 'https://youtu.be/oq6UDAQKfuc', 57);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `alternativas`
--
ALTER TABLE `alternativas`
  ADD PRIMARY KEY (`alternativa_id`),
  ADD KEY `pergunta_id` (`pergunta_id`);

--
-- Índices de tabela `correcoes`
--
ALTER TABLE `correcoes`
  ADD PRIMARY KEY (`correcao_id`),
  ADD KEY `pergunta_id` (`pergunta_id`);

--
-- Índices de tabela `estatisticas_usuarios`
--
ALTER TABLE `estatisticas_usuarios`
  ADD PRIMARY KEY (`estatistica_id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `materia_id` (`materia_id`);

--
-- Índices de tabela `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pdfs`
--
ALTER TABLE `pdfs`
  ADD PRIMARY KEY (`pdf_id`),
  ADD KEY `subconteudo_id` (`subconteudo_id`) USING BTREE;

--
-- Índices de tabela `perguntas`
--
ALTER TABLE `perguntas`
  ADD PRIMARY KEY (`pergunta_id`),
  ADD KEY `questionario_id` (`questionario_id`);

--
-- Índices de tabela `pontuacoes`
--
ALTER TABLE `pontuacoes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `materia_id` (`materia_id`);

--
-- Índices de tabela `questionarios`
--
ALTER TABLE `questionarios`
  ADD PRIMARY KEY (`questionario_id`),
  ADD KEY `subconteudo_id` (`subconteudo_id`);

--
-- Índices de tabela `respostas_questionarios`
--
ALTER TABLE `respostas_questionarios`
  ADD PRIMARY KEY (`resposta_questionario_id`),
  ADD KEY `questionario_id` (`questionario_id`),
  ADD KEY `usuario_id` (`usuario_id`,`questionario_id`) USING BTREE;

--
-- Índices de tabela `respostas_usuarios`
--
ALTER TABLE `respostas_usuarios`
  ADD PRIMARY KEY (`resposta_id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `pergunta_id` (`pergunta_id`),
  ADD KEY `alternativa_id` (`alternativa_id`);

--
-- Índices de tabela `subconteudos`
--
ALTER TABLE `subconteudos`
  ADD PRIMARY KEY (`subconteudo_id`),
  ADD KEY `materia_id` (`materia_id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices de tabela `videoaulas`
--
ALTER TABLE `videoaulas`
  ADD PRIMARY KEY (`videoaula_id`),
  ADD KEY `subconteudo_id` (`subconteudo_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alternativas`
--
ALTER TABLE `alternativas`
  MODIFY `alternativa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=846;

--
-- AUTO_INCREMENT de tabela `correcoes`
--
ALTER TABLE `correcoes`
  MODIFY `correcao_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT de tabela `estatisticas_usuarios`
--
ALTER TABLE `estatisticas_usuarios`
  MODIFY `estatistica_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `pdfs`
--
ALTER TABLE `pdfs`
  MODIFY `pdf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `perguntas`
--
ALTER TABLE `perguntas`
  MODIFY `pergunta_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT de tabela `pontuacoes`
--
ALTER TABLE `pontuacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `questionarios`
--
ALTER TABLE `questionarios`
  MODIFY `questionario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `respostas_questionarios`
--
ALTER TABLE `respostas_questionarios`
  MODIFY `resposta_questionario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT de tabela `respostas_usuarios`
--
ALTER TABLE `respostas_usuarios`
  MODIFY `resposta_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1768;

--
-- AUTO_INCREMENT de tabela `subconteudos`
--
ALTER TABLE `subconteudos`
  MODIFY `subconteudo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `videoaulas`
--
ALTER TABLE `videoaulas`
  MODIFY `videoaula_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `alternativas`
--
ALTER TABLE `alternativas`
  ADD CONSTRAINT `alternativas_ibfk_1` FOREIGN KEY (`pergunta_id`) REFERENCES `perguntas` (`pergunta_id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `correcoes`
--
ALTER TABLE `correcoes`
  ADD CONSTRAINT `correcoes_ibfk_1` FOREIGN KEY (`pergunta_id`) REFERENCES `perguntas` (`pergunta_id`);

--
-- Restrições para tabelas `estatisticas_usuarios`
--
ALTER TABLE `estatisticas_usuarios`
  ADD CONSTRAINT `estatisticas_usuarios_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `estatisticas_usuarios_ibfk_2` FOREIGN KEY (`materia_id`) REFERENCES `materias` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `pdfs`
--
ALTER TABLE `pdfs`
  ADD CONSTRAINT `pdfs_ibfk_1` FOREIGN KEY (`subconteudo_id`) REFERENCES `subconteudos` (`subconteudo_id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `perguntas`
--
ALTER TABLE `perguntas`
  ADD CONSTRAINT `perguntas_ibfk_1` FOREIGN KEY (`questionario_id`) REFERENCES `questionarios` (`questionario_id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `pontuacoes`
--
ALTER TABLE `pontuacoes`
  ADD CONSTRAINT `pontuacoes_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pontuacoes_ibfk_2` FOREIGN KEY (`materia_id`) REFERENCES `materias` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `questionarios`
--
ALTER TABLE `questionarios`
  ADD CONSTRAINT `questionarios_ibfk_1` FOREIGN KEY (`subconteudo_id`) REFERENCES `subconteudos` (`subconteudo_id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `respostas_questionarios`
--
ALTER TABLE `respostas_questionarios`
  ADD CONSTRAINT `respostas_questionarios_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `respostas_questionarios_ibfk_2` FOREIGN KEY (`questionario_id`) REFERENCES `questionarios` (`questionario_id`);

--
-- Restrições para tabelas `respostas_usuarios`
--
ALTER TABLE `respostas_usuarios`
  ADD CONSTRAINT `respostas_usuarios_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `respostas_usuarios_ibfk_2` FOREIGN KEY (`pergunta_id`) REFERENCES `perguntas` (`pergunta_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `respostas_usuarios_ibfk_3` FOREIGN KEY (`alternativa_id`) REFERENCES `alternativas` (`alternativa_id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `subconteudos`
--
ALTER TABLE `subconteudos`
  ADD CONSTRAINT `subconteudos_ibfk_1` FOREIGN KEY (`materia_id`) REFERENCES `materias` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `videoaulas`
--
ALTER TABLE `videoaulas`
  ADD CONSTRAINT `videoaulas_ibfk_1` FOREIGN KEY (`subconteudo_id`) REFERENCES `subconteudos` (`subconteudo_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
