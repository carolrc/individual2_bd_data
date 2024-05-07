CREATE TABLE `Empresa` (
  `ID` int PRIMARY KEY,
  `CNPJ` varchar(14),
  `Nome` varchar(100),
  `Endereço` varchar(100),
  `Telefone` varchar(15),
  `Email` varchar(50),
  `Setor` varchar(30)
);

CREATE TABLE `Tecnologia` (
  `ID` int PRIMARY KEY,
  `Nome` varchar(100),
  `Área` varchar(30)
);

CREATE TABLE `Empresa_Tecnologia` (
  `ID_Empresa` int,
  `ID_Tecnologia` int
);

CREATE TABLE `Colaborador` (
  `ID` int PRIMARY KEY,
  `Nome` varchar(100),
  `Cargo` varchar(30),
  `Email` varchar(50),
  `Endereço` varchar(100),
  `ID_Empresa` int,
  `ID_Tecnologia` int
);

ALTER TABLE `Empresa_Tecnologia` ADD FOREIGN KEY (`ID_Empresa`) REFERENCES `Empresa` (`ID`);

ALTER TABLE `Empresa_Tecnologia` ADD FOREIGN KEY (`ID_Tecnologia`) REFERENCES `Tecnologia` (`ID`);

ALTER TABLE `Colaborador` ADD FOREIGN KEY (`ID_Empresa`) REFERENCES `Empresa` (`ID`);

ALTER TABLE `Colaborador` ADD FOREIGN KEY (`ID_Tecnologia`) REFERENCES `Tecnologia` (`ID`);
