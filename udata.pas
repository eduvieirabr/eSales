unit udata;

interface

uses
  System.SysUtils, System.Classes,FMX.Forms, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.FMXUI.Error,
  FireDAC.FMXUI.Login, FireDAC.FMXUI.Async, FireDAC.FMXUI.Script,
  FireDAC.FMXUI.Wait, Data.FMTBcd, DBXDataSnap, Data.DBXCommon, IPPeerClient,
  FireDAC.Comp.UI, FireDAC.Comp.Client, Datasnap.DBClient, Datasnap.DSConnect,
  Data.DB, Data.SqlExpr,math,System.Threading,FMX.Dialogs, FireDAC.Comp.DataSet,IdZLibCompressorBase, IdCompressorZLib,System.zlib, IdBaseComponent

  {$IFDEF WIN32},midaslib,FireDAC.Phys.MySQLDef, FireDAC.Phys.MySQL
  {$ENDIF}
   ,FMX.FlexCel.Core, FlexCel.XlsAdapter, System.Sensors,
  System.Sensors.Components
  ;

type
  T_data = class(TDataModule)
    VENDEDOR: TFDQuery;
    VENDEDORCODIGO: TStringField;
    VENDEDORNOME: TStringField;
    VENDEDOREMAIL: TStringField;
    _upreco: TClientDataSet;
    uvenda: TFDQuery;
    uvendaCLIENTE: TStringField;
    uvendaPRODUTO: TStringField;
    uvendaUVENDA: TStringField;
    uvendaPRECO: TFloatField;
    cnp2: TFDQuery;
    cnp2CODIGO: TStringField;
    cnp2SEQ: TIntegerField;
    cnp2DIAS: TIntegerField;
    cnp2PERCENTUAL: TFloatField;
    _AUX2: TClientDataSet;
    usu: TFDQuery;
    sequencial: TClientDataSet;
    OFICINA: TFDQuery;
    OFICINAPEDIDO: TStringField;
    OFICINATECNICO: TStringField;
    OFICINAOFICINA: TStringField;
    OFICINADATAE: TDateField;
    OFICINADATAS: TDateField;
    OFICINAHORAE: TTimeField;
    OFICINAHORAS: TTimeField;
    OFICINANOMEOF: TStringField;
    OFICINANOMETEC: TStringField;
    OFICINAVEND: TStringField;
    TPG: TFDQuery;
    TPGCODIGO: TStringField;
    TPGDESCRICAO: TStringField;
    PED_PAG: TFDQuery;
    PED_PAGPEDIDO: TStringField;
    PED_PAGCOND: TStringField;
    PED_PAGINICIO: TDateField;
    PED_PAGVALOR: TFloatField;
    PED_PAGPARCELA: TIntegerField;
    PED_PAGVEND: TStringField;
    PED_PAGTPG: TStringField;
    GRUPO3: TFDQuery;
    StringField3: TStringField;
    StringField4: TStringField;
    GRUPO2: TFDQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    GRUPO: TFDQuery;
    GRUPOCODIGO: TStringField;
    GRUPODESCRICAO: TStringField;
    emps: TFDQuery;
    empsNOME: TStringField;
    empsSIGLA: TStringField;
    empsFILIAL: TStringField;
    empsTXCOFINS: TBCDField;
    empsTXPIS: TBCDField;
    empsD_E_L_E_T_: TStringField;
    empsR_E_C_D_E_L_: TIntegerField;
    empsR_E_C_N_O_: TIntegerField;
    empsOREC: TIntegerField;
    _aux: TClientDataSet;
    _sc6: TClientDataSet;
    _SC5: TClientDataSet;
    aux3: TFDQuery;
    aux2: TFDQuery;
    REGRA: TFDQuery;
    REGRACODIGO: TStringField;
    REGRATIPO: TStringField;
    REGRAVALOR: TFloatField;
    REGRADESCONTO: TFloatField;
    REGRACLIENTE: TStringField;
    ATU: TClientDataSet;
    SE4: TFDQuery;
    SE4E4_PORTADO: TStringField;
    SE4E4_FILIAL: TStringField;
    SE4E4_CODIGO: TStringField;
    SE4E4_TIPO: TStringField;
    SE4E4_COND: TStringField;
    SE4E4_DESCRI: TStringField;
    SE4E4_IPI: TStringField;
    SE4E4_DDD: TStringField;
    SE4E4_DESCFIN: TFloatField;
    SE4E4_DIADESC: TFloatField;
    SE4E4_FORMA: TStringField;
    SE4E4_ACRSFIN: TFloatField;
    SE4E4_SOLID: TStringField;
    SE4E4_ACRES: TStringField;
    SE4E4_PERCOM: TFloatField;
    SE4E4_SUPER: TFloatField;
    SE4E4_INFER: TFloatField;
    SE4E4_FATOR: TFloatField;
    SE4E4_PLANO: TStringField;
    SE4E4_JURCART: TStringField;
    SE4R_E_C_N_O_: TIntegerField;
    SE4R_E_C_D_E_L_: TIntegerField;
    SE4D_E_L_E_T_: TStringField;
    SC6: TFDQuery;
    SC6c6_op: TStringField;
    SC6c6_barra: TStringField;
    SC6c6_ok: TStringField;
    SC6c6_nfori: TStringField;
    SC6c6_seriori: TStringField;
    SC6c6_itemori: TStringField;
    SC6c6_ipidev: TFloatField;
    SC6c6_identb6: TStringField;
    SC6c6_blq: TStringField;
    SC6c6_picmret: TFloatField;
    SC6c6_codiss: TStringField;
    SC6c6_grade: TStringField;
    SC6c6_itemgrd: TStringField;
    SC6c6_lotectl: TStringField;
    SC6c6_numlote: TStringField;
    SC6c6_dtvalid: TStringField;
    SC6c6_numorc: TStringField;
    SC6c6_chassi: TStringField;
    SC6c6_opc: TStringField;
    SC6c6_localiz: TStringField;
    SC6c6_numseri: TStringField;
    SC6c6_numop: TStringField;
    SC6c6_itemop: TStringField;
    SC6c6_clasfis: TStringField;
    SC6c6_qtdrese: TFloatField;
    SC6c6_contrat: TStringField;
    SC6c6_numos: TStringField;
    SC6c6_numosfa: TStringField;
    SC6c6_codfab: TStringField;
    SC6c6_lojafa: TStringField;
    SC6c6_itemcon: TStringField;
    SC6c6_tpop: TStringField;
    SC6c6_revisao: TStringField;
    SC6c6_servic: TStringField;
    SC6c6_endpad: TStringField;
    SC6c6_tpestr: TStringField;
    SC6c6_contrt: TStringField;
    SC6c6_tpcontr: TStringField;
    SC6c6_itcontr: TStringField;
    SC6c6_geroupv: TStringField;
    SC6c6_projpms: TStringField;
    SC6c6_edtpms: TStringField;
    SC6c6_taskpms: TStringField;
    SC6c6_trt: TStringField;
    SC6c6_qtdemp: TFloatField;
    SC6c6_qtdemp2: TFloatField;
    SC6c6_projet: TStringField;
    SC6c6_itproj: TStringField;
    SC6c6_potenci: TFloatField;
    SC6c6_licita: TStringField;
    SC6c6_regwms: TStringField;
    SC6c6_mopc: TStringField;
    SC6c6_numcp: TStringField;
    SC6c6_filial: TStringField;
    SC6c6_item: TStringField;
    SC6c6_produto: TStringField;
    SC6c6_um: TStringField;
    SC6c6_qtdven: TFloatField;
    SC6c6_prcven: TFloatField;
    SC6c6_valor: TFloatField;
    SC6c6_qtdlib: TFloatField;
    SC6c6_qtdlib2: TFloatField;
    SC6c6_segum: TStringField;
    SC6c6_sldalib: TFloatField;
    SC6c6_oper: TStringField;
    SC6c6_tes: TStringField;
    SC6c6_unsven: TFloatField;
    SC6c6_local: TStringField;
    SC6c6_cf: TStringField;
    SC6c6_qtdent: TFloatField;
    SC6c6_qtdent2: TFloatField;
    SC6c6_cli: TStringField;
    SC6c6_descont: TFloatField;
    SC6c6_valdesc: TFloatField;
    SC6c6_entreg: TStringField;
    SC6c6_la: TStringField;
    SC6c6_loja: TStringField;
    SC6c6_nota: TStringField;
    SC6c6_serie: TStringField;
    SC6c6_datfat: TStringField;
    SC6c6_num: TStringField;
    SC6c6_comis1: TFloatField;
    SC6c6_comis2: TFloatField;
    SC6c6_comis3: TFloatField;
    SC6c6_comis4: TFloatField;
    SC6c6_comis5: TFloatField;
    SC6c6_pedcli: TStringField;
    SC6c6_descri: TStringField;
    SC6c6_prunit: TFloatField;
    SC6c6_bloquei: TStringField;
    SC6c6_reserva: TStringField;
    SC6r_e_c_n_o_: TIntegerField;
    SC6r_e_c_d_e_l_: TIntegerField;
    SC6d_e_l_e_t_: TStringField;
    SC6c6_referencia: TStringField;
    SC5: TFDQuery;
    SC5c5_num: TStringField;
    SC5c5_filial: TStringField;
    SC5c5_zzrem: TStringField;
    SC5c5_tipo: TStringField;
    SC5c5_cliente: TStringField;
    SC5c5_lojacli: TStringField;
    SC5c5_client: TStringField;
    SC5c5_lojaent: TStringField;
    SC5c5_vend5: TStringField;
    SC5c5_comis5: TFloatField;
    SC5c5_desc1: TFloatField;
    SC5c5_desc2: TFloatField;
    SC5c5_desc3: TFloatField;
    SC5c5_desc4: TFloatField;
    SC5c5_banco: TStringField;
    SC5c5_descfi: TFloatField;
    SC5c5_emissao: TStringField;
    SC5c5_cotacao: TStringField;
    SC5c5_parc1: TFloatField;
    SC5c5_data1: TStringField;
    SC5c5_parc2: TFloatField;
    SC5c5_data2: TStringField;
    SC5c5_parc3: TFloatField;
    SC5c5_data3: TStringField;
    SC5c5_parc4: TFloatField;
    SC5c5_data4: TStringField;
    SC5c5_tiplib: TStringField;
    SC5c5_tpfrete: TStringField;
    SC5c5_transp: TStringField;
    SC5c5_tipocli: TStringField;
    SC5c5_condpag: TStringField;
    SC5c5_tabela: TStringField;
    SC5c5_vend1: TStringField;
    SC5c5_comis1: TFloatField;
    SC5c5_vend2: TStringField;
    SC5c5_comis2: TFloatField;
    SC5c5_vend3: TStringField;
    SC5c5_comis3: TFloatField;
    SC5c5_vend4: TStringField;
    SC5c5_comis4: TFloatField;
    SC5c5_frete: TFloatField;
    SC5c5_seguro: TFloatField;
    SC5c5_despesa: TFloatField;
    SC5c5_fretaut: TFloatField;
    SC5c5_reajust: TStringField;
    SC5c5_moeda: TFloatField;
    SC5c5_pesol: TFloatField;
    SC5c5_pbruto: TFloatField;
    SC5c5_reimp: TFloatField;
    SC5c5_redesp: TStringField;
    SC5c5_volume1: TFloatField;
    SC5c5_volume2: TFloatField;
    SC5c5_volume3: TFloatField;
    SC5c5_volume4: TFloatField;
    SC5c5_especi1: TStringField;
    SC5c5_especi2: TStringField;
    SC5c5_especi3: TStringField;
    SC5c5_especi4: TStringField;
    SC5c5_acrsfin: TFloatField;
    SC5c5_mena: TStringField;
    SC5c5_menpad: TStringField;
    SC5c5_inciss: TStringField;
    SC5c5_liberok: TStringField;
    SC5c5_ok: TStringField;
    SC5c5_a: TStringField;
    SC5c5_serie: TStringField;
    SC5c5_kitrep: TStringField;
    SC5c5_os: TStringField;
    SC5c5_descont: TFloatField;
    SC5c5_pedexp: TStringField;
    SC5c5_txmoeda: TFloatField;
    SC5c5_tpcarga: TStringField;
    SC5c5_pdescab: TFloatField;
    SC5c5_blq: TStringField;
    SC5c5_forniss: TStringField;
    SC5c5_contra: TStringField;
    SC5r_e_c_n_o_: TIntegerField;
    SC5r_e_c_d_e_l_: TIntegerField;
    SC5d_e_l_e_t_: TStringField;
    SC5c5_zznum: TStringField;
    SC5c5_zznomec: TStringField;
    SC5c5_zznomev: TStringField;
    SC5c5_zzgrup1: TFloatField;
    SC5c5_zzgrup2: TFloatField;
    SC5c5_numorg: TStringField;
    SC5c5_zztpcom: TStringField;
    SC5c5_zzfatu: TStringField;
    SC5c5_zzdepto: TStringField;
    SC5c5_zzcondpag: TStringField;
    SC5c5_mennota: TMemoField;
    SC5c5_mo: TFloatField;
    SC5c5_placa: TStringField;
    SC5c5_saida: TStringField;
    SC5c5_prefixo: TStringField;
    SC5c5_sinistro: TStringField;
    SB2: TFDQuery;
    SB2B2_VATU3: TFloatField;
    SB2B2_CM3: TFloatField;
    SB2B2_VFIM4: TFloatField;
    SB2B2_VATU4: TFloatField;
    SB2B2_CM4: TFloatField;
    SB2B2_VFIM5: TFloatField;
    SB2B2_VATU5: TFloatField;
    SB2B2_CM5: TFloatField;
    SB2B2_VFIM3: TFloatField;
    SB2B2_QEMP: TFloatField;
    SB2B2_QEMPN: TFloatField;
    SB2B2_QTSEGUM: TFloatField;
    SB2B2_USAI: TStringField;
    SB2B2_RESERVA: TFloatField;
    SB2B2_QPEDVEN: TFloatField;
    SB2B2_LOCALIZ: TStringField;
    SB2B2_NAOCLAS: TFloatField;
    SB2B2_SALPEDI: TFloatField;
    SB2B2_DINVENT: TStringField;
    SB2B2_DINVFIM: TStringField;
    SB2B2_QTNP: TFloatField;
    SB2B2_QNPT: TFloatField;
    SB2B2_QTER: TFloatField;
    SB2B2_QFIM2: TFloatField;
    SB2B2_QACLASS: TFloatField;
    SB2B2_DTINV: TStringField;
    SB2B2_CMFF1: TFloatField;
    SB2B2_CMFF2: TFloatField;
    SB2B2_CMFF3: TFloatField;
    SB2B2_CMFF4: TFloatField;
    SB2B2_CMFF5: TFloatField;
    SB2B2_VFIMFF1: TFloatField;
    SB2B2_VFIMFF2: TFloatField;
    SB2B2_VFIMFF3: TFloatField;
    SB2B2_VFIMFF4: TFloatField;
    SB2B2_VFIMFF5: TFloatField;
    SB2B2_QEMPSA: TFloatField;
    SB2B2_QEMPPRE: TFloatField;
    SB2B2_SALPPRE: TFloatField;
    SB2B2_QEMP2: TFloatField;
    SB2B2_QEMPN2: TFloatField;
    SB2B2_RESERV2: TFloatField;
    SB2B2_QPEDVE2: TFloatField;
    SB2B2_QEPRE2: TFloatField;
    SB2B2_QFIMFF: TFloatField;
    SB2B2_SALPED2: TFloatField;
    SB2B2_QEMPPRJ: TFloatField;
    SB2B2_CODGRP: TStringField;
    SB2B2_CODITE: TStringField;
    SB2B2_QEMPPR2: TFloatField;
    SB2B2_STATUS: TStringField;
    SB2B2_FILIAL: TStringField;
    SB2B2_COD: TStringField;
    SB2B2_QFIM: TFloatField;
    SB2B2_LOCAL: TStringField;
    SB2B2_DPROD: TStringField;
    SB2B2_QATU: TFloatField;
    SB2B2_VFIM1: TFloatField;
    SB2B2_VATU1: TFloatField;
    SB2B2_CM1: TFloatField;
    SB2B2_VFIM2: TFloatField;
    SB2B2_VATU2: TFloatField;
    SB2B2_CM2: TFloatField;
    SB2R_E_C_N_O_: TIntegerField;
    SB2R_E_C_D_E_L_: TIntegerField;
    SB2D_E_L_E_T_: TStringField;
    DA1: TFDQuery;
    DA1da1_filial: TStringField;
    DA1da1_vlrdes: TFloatField;
    DA1da1_perdes: TFloatField;
    DA1da1_ativo: TStringField;
    DA1da1_frete: TFloatField;
    DA1da1_estado: TStringField;
    DA1da1_tpoper: TStringField;
    DA1da1_qtdlot: TFloatField;
    DA1da1_indlot: TStringField;
    DA1da1_moeda: TFloatField;
    DA1da1_datvig: TStringField;
    DA1da1_item: TStringField;
    DA1da1_codtab: TStringField;
    DA1da1_destab: TStringField;
    DA1da1_codpro: TStringField;
    DA1da1_descri: TStringField;
    DA1da1_prcbas: TFloatField;
    DA1da1_prcven: TFloatField;
    DA1r_e_c_n_o_: TFDAutoIncField;
    DA1r_e_c_d_e_l_: TIntegerField;
    DA1d_e_l_e_t_: TStringField;
    DA1da1_oldc: TStringField;
    DA1da1_custo: TFloatField;
    DA1da1_avista: TFloatField;
    SB1: TFDQuery;
    SB1B1_FILIAL: TStringField;
    SB1B1_TIPO: TStringField;
    SB1B1_ZZOF: TStringField;
    SB1B1_CODITE: TStringField;
    SB1B1_ZZNUMS: TStringField;
    SB1B1_ZZTIPPA: TStringField;
    SB1B1_ZZGRPCD: TStringField;
    SB1B1_COD: TStringField;
    SB1B1_DESC: TStringField;
    SB1B1_ZZMODEL: TStringField;
    SB1B1_POSIPI: TStringField;
    SB1B1_ESPECIE: TFloatField;
    SB1B1_EX_NCM: TStringField;
    SB1B1_EX_NBM: TStringField;
    SB1B1_UM: TStringField;
    SB1B1_LOCPAD: TStringField;
    SB1B1_GRUPO: TStringField;
    SB1B1_ORIGEM: TStringField;
    SB1B1_PICM: TFloatField;
    SB1B1_IPI: TFloatField;
    SB1B1_ALIQISS: TFloatField;
    SB1B1_MSBLQL: TStringField;
    SB1B1_BITMAP: TStringField;
    SB1B1_SEGUM: TStringField;
    SB1B1_CODISS: TStringField;
    SB1B1_TE: TStringField;
    SB1B1_TS: TStringField;
    SB1B1_PICMRET: TFloatField;
    SB1B1_PICMENT: TFloatField;
    SB1B1_IMPZFRC: TStringField;
    SB1B1_CONV: TFloatField;
    SB1B1_TIPCONV: TStringField;
    SB1B1_ALTER: TStringField;
    SB1B1_QE: TFloatField;
    SB1B1_UCOM: TStringField;
    SB1B1_PRV1: TFloatField;
    SB1B1_EMIN: TFloatField;
    SB1B1_ESTFOR: TStringField;
    SB1B1_CUSTD: TFloatField;
    SB1B1_UCALSTD: TStringField;
    SB1B1_UPRC: TFloatField;
    SB1B1_MCUSTD: TStringField;
    SB1B1_PESO: TFloatField;
    SB1B1_ESTSEG: TFloatField;
    SB1B1_FORPRZ: TStringField;
    SB1B1_PE: TFloatField;
    SB1B1_TIPE: TStringField;
    SB1B1_LE: TFloatField;
    SB1B1_LM: TFloatField;
    SB1B1_CONTA: TStringField;
    SB1B1_LOJPROC: TStringField;
    SB1B1_ZZCTAD: TStringField;
    SB1B1_ZZCTAC: TStringField;
    SB1B1_TOLER: TFloatField;
    SB1B1_CC: TStringField;
    SB1B1_ITEMCC: TStringField;
    SB1B1_FAMILIA: TStringField;
    SB1B1_UREV: TStringField;
    SB1B1_DATREF: TStringField;
    SB1B1_PROC: TStringField;
    SB1B1_QB: TFloatField;
    SB1B1_APROPRI: TStringField;
    SB1B1_TIPODEC: TStringField;
    SB1B1_DTREFP1: TStringField;
    SB1B1_CLASFIS: TStringField;
    SB1B1_FANTASM: TStringField;
    SB1B1_RASTRO: TStringField;
    SB1B1_FORAEST: TStringField;
    SB1B1_COMIS: TFloatField;
    SB1B1_CONINI: TStringField;
    SB1B1_CONTSOC: TStringField;
    SB1B1_MONO: TStringField;
    SB1B1_CODBAR: TStringField;
    SB1B1_GRADE: TStringField;
    SB1B1_FORMLOT: TStringField;
    SB1B1_PERINV: TFloatField;
    SB1B1_FPCOD: TStringField;
    SB1B1_GRTRIB: TStringField;
    SB1B1_CONTRAT: TStringField;
    SB1B1_DESC_P: TStringField;
    SB1B1_DESC_GI: TStringField;
    SB1B1_DESC_I: TStringField;
    SB1B1_MRP: TStringField;
    SB1B1_PRVALID: TFloatField;
    SB1B1_ANUENTE: TStringField;
    SB1B1_OPC: TStringField;
    SB1B1_CODOBS: TStringField;
    SB1B1_NOTAMIN: TFloatField;
    SB1B1_NUMCOP: TFloatField;
    SB1B1_FABRIC: TStringField;
    SB1B1_IRRF: TStringField;
    SB1B1_LOCALIZ: TStringField;
    SB1B1_OPERPAD: TStringField;
    SB1B1_VLREFUS: TFloatField;
    SB1B1_PRODPAI: TStringField;
    SB1B1_IMPORT: TStringField;
    SB1B1_SITPROD: TStringField;
    SB1B1_MODELO: TStringField;
    SB1B1_SETOR: TStringField;
    SB1B1_BALANCA: TStringField;
    SB1B1_TECLA: TStringField;
    SB1B1_TIPOCQ: TStringField;
    SB1B1_SOLICIT: TStringField;
    SB1B1_AGREGCU: TStringField;
    SB1B1_QUADPRO: TStringField;
    SB1B1_GRUPCOM: TStringField;
    SB1B1_NALNCCA: TStringField;
    SB1B1_NUMCQPR: TFloatField;
    SB1B1_CONTCQP: TFloatField;
    SB1B1_REVATU: TStringField;
    SB1B1_NALSH: TStringField;
    SB1B1_CODEMB: TStringField;
    SB1B1_INSS: TStringField;
    SB1B1_ESPECIF: TStringField;
    SB1B1_MAT_PRI: TStringField;
    SB1B1_DATASUB: TStringField;
    SB1B1_REDINSS: TFloatField;
    SB1B1_REDIRRF: TFloatField;
    SB1B1_ALADI: TStringField;
    SB1B1_TAB_IPI: TStringField;
    SB1B1_GRUDES: TStringField;
    SB1B1_REDPIS: TFloatField;
    SB1B1_REDCOF: TFloatField;
    SB1B1_PCSLL: TFloatField;
    SB1B1_PCOFINS: TFloatField;
    SB1B1_PPIS: TFloatField;
    SB1B1_MTBF: TFloatField;
    SB1B1_QTDSER: TFloatField;
    SB1B1_MTTR: TFloatField;
    SB1B1_FLAGSUG: TStringField;
    SB1B1_CLASSVE: TStringField;
    SB1B1_MIDIA: TStringField;
    SB1B1_QTMIDIA: TFloatField;
    SB1B1_VLR_IPI: TFloatField;
    SB1B1_ENVOBR: TStringField;
    SB1B1_SERIE: TStringField;
    SB1B1_FAIXAS: TFloatField;
    SB1B1_NROPAG: TFloatField;
    SB1B1_ISBN: TStringField;
    SB1B1_TITORIG: TStringField;
    SB1B1_LINGUA: TStringField;
    SB1B1_EDICAO: TStringField;
    SB1B1_OBSISBN: TStringField;
    SB1B1_CLVL: TStringField;
    SB1B1_ATIVO: TStringField;
    SB1B1_EMAX: TFloatField;
    SB1B1_CORPRI: TStringField;
    SB1B1_CORSEC: TStringField;
    SB1B1_NICONE: TStringField;
    SB1B1_ATRIB1: TStringField;
    SB1B1_ATRIB2: TStringField;
    SB1B1_ATRIB3: TStringField;
    SB1B1_REGSEQ: TStringField;
    SB1B1_PESBRU: TFloatField;
    SB1B1_TIPCAR: TStringField;
    SB1B1_FRACPER: TFloatField;
    SB1B1_INT_ICM: TFloatField;
    SB1B1_REQUIS: TStringField;
    SB1B1_SELO: TStringField;
    SB1B1_LOTVEN: TFloatField;
    SB1B1_OK: TStringField;
    SB1B1_USAFEFO: TStringField;
    SB1B1_VLR_ICM: TFloatField;
    SB1B1_VLRSELO: TFloatField;
    SB1B1_CODNOR: TStringField;
    SB1B1_CPOTENC: TStringField;
    SB1B1_POTENCI: TFloatField;
    SB1B1_CLASSE: TStringField;
    SB1B1_QTDACUM: TFloatField;
    SB1B1_QTDINIC: TFloatField;
    SB1B1_UMOEC: TFloatField;
    SB1B1_UVLRC: TFloatField;
    SB1B1_RETOPER: TStringField;
    SB1B1_CNAE: TStringField;
    SB1B1_FRETISS: TStringField;
    SB1B1_CRDEST: TFloatField;
    SB1B1_GCCUSTO: TStringField;
    SB1B1_PIS: TStringField;
    SB1B1_CCCUSTO: TStringField;
    SB1B1_COFINS: TStringField;
    SB1B1_CSLL: TStringField;
    SB1B1_CALCFET: TStringField;
    SB1B1_PAUTFET: TFloatField;
    SB1B1_ZZREVIS: TStringField;
    SB1B1_ZZMTREV: TWideMemoField;
    SB1B1_ZZPOTEN: TFloatField;
    SB1B1_ZZTENSA: TStringField;
    SB1B1_ZZFREQU: TFloatField;
    SB1B1_ZZNPOLO: TFloatField;
    SB1B1_ZZGPROT: TStringField;
    SB1B1_ZZREGIM: TStringField;
    SB1B1_ZZCTCJ: TStringField;
    SB1B1_ZZCLSIS: TStringField;
    SB1B1_ZZFRCON: TStringField;
    SB1B1_ZZTFREI: TFloatField;
    SB1B1_ZZRPM: TFloatField;
    SB1B1_ZZREDUC: TFloatField;
    SB1B1_ZZPINT: TStringField;
    SB1B1_ZZELEVT: TStringField;
    SB1B1_ZZNFASE: TFloatField;
    SB1B1_ZZCARC: TStringField;
    SB1B1_ZZOBS: TWideMemoField;
    SB1B1_ZZNORMA: TStringField;
    SB1B1_ZZMEN1: TStringField;
    SB1B1_PARCEI: TStringField;
    SB1B1_DESPIMP: TStringField;
    SB1B1_PMACNUT: TFloatField;
    SB1B1_PMICNUT: TFloatField;
    SB1B1_CODQAD: TStringField;
    SB1B1_QBP: TFloatField;
    SB1B1_VLR_PIS: TFloatField;
    SB1B1_PRFDSUL: TFloatField;
    SB1B1_CODANT: TStringField;
    SB1B1_FETHAB: TStringField;
    SB1B1_VLR_COF: TFloatField;
    SB1D_E_L_E_T_: TStringField;
    SB1R_E_C_N_O_: TIntegerField;
    SB1R_E_C_D_E_L_: TIntegerField;
    SB1B1_MAT: TStringField;
    SB1B1_OBS: TWideMemoField;
    SB1B1_VM_I: TWideMemoField;
    SB1B1_VM_GI: TWideMemoField;
    SB1B1_VM_P: TWideMemoField;
    SB1B1_SUBG: TStringField;
    _ExecSQL: TSqlServerMethod;
    DTAB: TClientDataSet;
    AUX: TFDQuery;
    SA1: TFDQuery;
    SA1A1_MAIDUPL: TLargeintField;
    SA1A1_CEPE: TStringField;
    SA1A1_ESTE: TStringField;
    SA1A1_SATIV1: TStringField;
    SA1A1_DSATIV1: TStringField;
    SA1A1_SATIV2: TStringField;
    SA1A1_DSATIV2: TStringField;
    SA1A1_CODPAIS: TLargeintField;
    SA1A1_TPESSOA: TStringField;
    SA1A1_CODLOC: TStringField;
    SA1A1_SATIV3: TStringField;
    SA1A1_DSATIV3: TStringField;
    SA1A1_SATIV4: TStringField;
    SA1A1_TABELA: TStringField;
    SA1A1_INCISS: TStringField;
    SA1A1_SALDUPM: TLargeintField;
    SA1A1_PAGATR: TLargeintField;
    SA1A1_CXPOSTA: TStringField;
    SA1A1_ATIVIDA: TStringField;
    SA1A1_CARGO1: TStringField;
    SA1A1_CARGO2: TStringField;
    SA1A1_CARGO3: TStringField;
    SA1A1_ALIQIR: TLargeintField;
    SA1A1_SUPER: TStringField;
    SA1A1_RTEC: TStringField;
    SA1A1_OBSERV: TStringField;
    SA1A1_RG: TStringField;
    SA1A1_CALCSUF: TStringField;
    SA1A1_DTNASC: TStringField;
    SA1A1_SALPEDB: TLargeintField;
    SA1A1_CLIFAT: TStringField;
    SA1A1_GRPTRIB: TStringField;
    SA1A1_BAIRROC: TStringField;
    SA1A1_CEPC: TStringField;
    SA1A1_MUNC: TStringField;
    SA1A1_ESTC: TStringField;
    SA1A1_BAIRROE: TStringField;
    SA1A1_MUNE: TStringField;
    SA1A1_DSATIV4: TStringField;
    SA1A1_SATIV5: TStringField;
    SA1A1_DSATIV5: TStringField;
    SA1A1_SATIV6: TStringField;
    SA1A1_DSATIV6: TStringField;
    SA1A1_SATIV7: TStringField;
    SA1A1_DSATIV7: TStringField;
    SA1A1_SATIV8: TStringField;
    SA1A1_DSATIV8: TStringField;
    SA1A1_CODMARC: TStringField;
    SA1A1_CODAGE: TStringField;
    SA1A1_VM_MARC: TWideMemoField;
    SA1A1_COMAGE: TLargeintField;
    SA1A1_TIPCLI: TStringField;
    SA1A1_EMAIL: TStringField;
    SA1A1_DEST_1: TStringField;
    SA1A1_CODMUN: TStringField;
    SA1A1_DEST_2: TStringField;
    SA1A1_HPAGE: TStringField;
    SA1A1_DEST_3: TStringField;
    SA1A1_CONDPAG: TStringField;
    SA1A1_DIASPAG: TLargeintField;
    SA1A1_DESCPAG: TStringField;
    SA1A1_OBS: TStringField;
    SA1A1_AGREG: TStringField;
    SA1A1_MATR: TLargeintField;
    SA1A1_VM_OBS: TWideMemoField;
    SA1A1_CODHIST: TStringField;
    SA1A1_RECINSS: TStringField;
    SA1A1_RECCOFI: TStringField;
    SA1A1_RECCSLL: TStringField;
    SA1A1_RECPIS: TStringField;
    SA1A1_HISTMK: TWideMemoField;
    SA1A1_TIPPER: TStringField;
    SA1A1_COD_MUN: TStringField;
    SA1A1_SALFIN: TLargeintField;
    SA1A1_CONTAB: TStringField;
    SA1A1_SALFINM: TLargeintField;
    SA1A1_B2B: TStringField;
    SA1A1_GRPVEN: TStringField;
    SA1A1_CLICNV: TStringField;
    SA1A1_INSCRUR: TStringField;
    SA1A1_MSBLQL: TStringField;
    SA1A1_SITUA: TStringField;
    SA1A1_NUMRA: TStringField;
    SA1A1_SUBCOD: TStringField;
    SA1A1_CDRDES: TStringField;
    SA1A1_REGDES: TStringField;
    SA1A1_FILDEB: TStringField;
    SA1A1_CODFOR: TStringField;
    SA1A1_FILIAL: TStringField;
    SA1A1_LOJA: TStringField;
    SA1A1_PESSOA: TStringField;
    SA1A1_NOME: TStringField;
    SA1A1_NREDUZ: TStringField;
    SA1A1_TIPO: TStringField;
    SA1A1_COD: TStringField;
    SA1A1_END: TStringField;
    SA1A1_MUN: TStringField;
    SA1A1_EST: TStringField;
    SA1A1_NATUREZ: TStringField;
    SA1A1_ESTADO: TStringField;
    SA1A1_BAIRRO: TStringField;
    SA1A1_CEP: TStringField;
    SA1A1_DDI: TStringField;
    SA1A1_DDD: TStringField;
    SA1A1_TEL: TStringField;
    SA1A1_TELEX: TStringField;
    SA1A1_FAX: TStringField;
    SA1A1_ENDCOB: TStringField;
    SA1A1_PAIS: TStringField;
    SA1A1_INSCRM: TStringField;
    SA1A1_VEND: TStringField;
    SA1A1_COMIS: TLargeintField;
    SA1A1_REGIAO: TStringField;
    SA1A1_CONTA: TStringField;
    SA1A1_BCO1: TStringField;
    SA1A1_BCO2: TStringField;
    SA1A1_BCO3: TStringField;
    SA1A1_BCO4: TStringField;
    SA1A1_BCO5: TStringField;
    SA1A1_TRANSP: TStringField;
    SA1A1_TPFRET: TStringField;
    SA1A1_COND: TStringField;
    SA1A1_DESC: TLargeintField;
    SA1A1_PRIOR: TStringField;
    SA1A1_RISCO: TStringField;
    SA1A1_LC: TLargeintField;
    SA1A1_VENCLC: TStringField;
    SA1A1_CLASSE: TStringField;
    SA1A1_LCFIN: TLargeintField;
    SA1A1_MOEDALC: TLargeintField;
    SA1A1_MSALDO: TLargeintField;
    SA1A1_MCOMPRA: TLargeintField;
    SA1A1_ABICS: TStringField;
    SA1A1_BLEMAIL: TStringField;
    SA1A1_TIPOCLI: TStringField;
    SA1A1_IBGE: TStringField;
    SA1A1_SIMPLES: TStringField;
    SA1A1_ABATIMP: TStringField;
    SA1A1_RECIRRF: TStringField;
    SA1A1_METR: TLargeintField;
    SA1A1_PAISDES: TStringField;
    SA1A1_ENDENT: TStringField;
    SA1A1_ENDREC: TStringField;
    SA1A1_CGC: TStringField;
    SA1A1_CONTATO: TStringField;
    SA1A1_INSCR: TStringField;
    SA1A1_PFISICA: TStringField;
    SA1A1_PRICOM: TStringField;
    SA1A1_ULTCOM: TStringField;
    SA1A1_NROCOM: TLargeintField;
    SA1A1_FORMVIS: TStringField;
    SA1A1_TEMVIS: TLargeintField;
    SA1A1_ULTVIS: TStringField;
    SA1A1_TMPVIS: TStringField;
    SA1A1_TMPSTD: TStringField;
    SA1A1_CLASVEN: TStringField;
    SA1A1_MENSAGE: TStringField;
    SA1A1_SALDUP: TLargeintField;
    SA1A1_RECISS: TStringField;
    SA1A1_NROPAG: TLargeintField;
    SA1A1_SALPEDL: TLargeintField;
    SA1A1_TRANSF: TStringField;
    SA1A1_SUFRAMA: TStringField;
    SA1A1_ATR: TLargeintField;
    SA1A1_VACUM: TLargeintField;
    SA1A1_SALPED: TLargeintField;
    SA1A1_TITPROT: TLargeintField;
    SA1A1_DTULTIT: TStringField;
    SA1A1_CHQDEVO: TLargeintField;
    SA1A1_DTULCHQ: TStringField;
    SA1R_E_C_N_O_: TIntegerField;
    SA1R_E_C_D_E_L_: TIntegerField;
    SA1D_E_L_E_T_: TStringField;
    alerta: TClientDataSet;
    TRANSPORTE: TClientDataSet;
    EMPRESA: TClientDataSet;
    _SQL: TSQLConnection;
    SetAmbiente: TSqlServerMethod;
    DSM: TDSProviderConnection;
    USUARIO: TClientDataSet;
    _GeraSQL: TSqlServerMethod;
    FdCon: TFDConnection;
    FDManager1: TFDManager;
    FDGUIxErrorDialog1: TFDGUIxErrorDialog;
    FDGUIxLoginDialog1: TFDGUIxLoginDialog;
    FDGUIxAsyncExecuteDialog1: TFDGUIxAsyncExecuteDialog;
    FDGUIxScriptDialog1: TFDGUIxScriptDialog;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    _da1: TClientDataSet;
    IdCompressorZLib1: TIdCompressorZLib;
    transfer: TClientDataSet;
    transfervisual_cli: TStringField;
    transfertabela: TStringField;
    transferid: TAutoIncField;
    transferdados: TBlobField;
    _da1DA1_FILIAL: TStringField;
    _da1DA1_VLRDES: TSingleField;
    _da1DA1_PERDES: TSingleField;
    _da1DA1_ATIVO: TStringField;
    _da1DA1_FRETE: TSingleField;
    _da1DA1_ESTADO: TStringField;
    _da1DA1_TPOPER: TStringField;
    _da1DA1_QTDLOT: TSingleField;
    _da1DA1_INDLOT: TStringField;
    _da1DA1_MOEDA: TSingleField;
    _da1DA1_DATVIG: TStringField;
    _da1DA1_ITEM: TStringField;
    _da1DA1_CODTAB: TStringField;
    _da1DA1_DESTAB: TStringField;
    _da1DA1_CODPRO: TStringField;
    _da1DA1_DESCRI: TStringField;
    _da1DA1_PRCBAS: TSingleField;
    _da1DA1_PRCVEN: TSingleField;
    _da1R_E_C_N_O_: TIntegerField;
    _da1R_E_C_D_E_L_: TIntegerField;
    _da1D_E_L_E_T_: TStringField;
    _da1DA1_OLDC: TStringField;
    _da1visual_cli: TStringField;
    _da1DA1_PRCVEN2: TSingleField;
    _da1DA1_PRCVEN3: TSingleField;
    _da1DA1_AVISTA: TSingleField;
    _da1DA1_CUSTO: TSingleField;
    _sa1: TClientDataSet;
    FDTable1: TFDTable;
    conf: TFDQuery;
    confid: TIntegerField;
    confbloqueio_regra: TBooleanField;
    conflogin_automatico: TBooleanField;
    confassinatura_obrigatoria: TBooleanField;
    confcontrola_rotas: TBooleanField;
    confcheckin_obrigatorio: TBooleanField;
    auxSC6: TFDQuery;
    auxSC6PESO: TFloatField;
    auxSC6MEDIO: TFloatField;
    padrao: TFDQuery;
    padraoCODIGO: TStringField;
    padraoTIPO: TStringField;
    padraoVALOR: TFloatField;
    padraoDESCONTO: TFloatField;
    padraoCLIENTE: TStringField;
    cSC5: TFDQuery;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    StringField14: TStringField;
    FloatField6: TFloatField;
    StringField15: TStringField;
    StringField16: TStringField;
    FloatField7: TFloatField;
    StringField17: TStringField;
    FloatField8: TFloatField;
    StringField18: TStringField;
    FloatField9: TFloatField;
    StringField19: TStringField;
    FloatField10: TFloatField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    FloatField11: TFloatField;
    StringField28: TStringField;
    FloatField12: TFloatField;
    StringField29: TStringField;
    FloatField13: TFloatField;
    StringField30: TStringField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    FloatField16: TFloatField;
    FloatField17: TFloatField;
    FloatField18: TFloatField;
    StringField31: TStringField;
    FloatField19: TFloatField;
    FloatField20: TFloatField;
    FloatField21: TFloatField;
    FloatField22: TFloatField;
    StringField32: TStringField;
    FloatField23: TFloatField;
    FloatField24: TFloatField;
    FloatField25: TFloatField;
    FloatField26: TFloatField;
    StringField33: TStringField;
    StringField34: TStringField;
    StringField35: TStringField;
    StringField36: TStringField;
    FloatField27: TFloatField;
    StringField37: TStringField;
    StringField38: TStringField;
    StringField39: TStringField;
    StringField40: TStringField;
    StringField41: TStringField;
    StringField42: TStringField;
    StringField43: TStringField;
    StringField44: TStringField;
    StringField45: TStringField;
    FloatField28: TFloatField;
    StringField46: TStringField;
    FloatField29: TFloatField;
    StringField47: TStringField;
    FloatField30: TFloatField;
    StringField48: TStringField;
    StringField49: TStringField;
    StringField50: TStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField51: TStringField;
    StringField52: TStringField;
    StringField53: TStringField;
    StringField54: TStringField;
    FloatField31: TFloatField;
    FloatField32: TFloatField;
    StringField55: TStringField;
    StringField56: TStringField;
    StringField57: TStringField;
    StringField58: TStringField;
    StringField59: TStringField;
    MemoField1: TMemoField;
    FloatField33: TFloatField;
    StringField60: TStringField;
    StringField61: TStringField;
    StringField62: TStringField;
    StringField63: TStringField;
    cSC6: TFDQuery;
    StringField64: TStringField;
    StringField65: TStringField;
    StringField66: TStringField;
    StringField67: TStringField;
    StringField68: TStringField;
    StringField69: TStringField;
    FloatField34: TFloatField;
    StringField70: TStringField;
    StringField71: TStringField;
    FloatField35: TFloatField;
    StringField72: TStringField;
    StringField73: TStringField;
    StringField74: TStringField;
    StringField75: TStringField;
    StringField76: TStringField;
    StringField77: TStringField;
    StringField78: TStringField;
    StringField79: TStringField;
    StringField80: TStringField;
    StringField81: TStringField;
    StringField82: TStringField;
    StringField83: TStringField;
    StringField84: TStringField;
    StringField85: TStringField;
    FloatField36: TFloatField;
    StringField86: TStringField;
    StringField87: TStringField;
    StringField88: TStringField;
    StringField89: TStringField;
    StringField90: TStringField;
    StringField91: TStringField;
    StringField92: TStringField;
    StringField93: TStringField;
    StringField94: TStringField;
    StringField95: TStringField;
    StringField96: TStringField;
    StringField97: TStringField;
    StringField98: TStringField;
    StringField99: TStringField;
    StringField100: TStringField;
    StringField101: TStringField;
    StringField102: TStringField;
    StringField103: TStringField;
    StringField104: TStringField;
    FloatField37: TFloatField;
    FloatField38: TFloatField;
    StringField105: TStringField;
    StringField106: TStringField;
    FloatField39: TFloatField;
    StringField107: TStringField;
    StringField108: TStringField;
    StringField109: TStringField;
    StringField110: TStringField;
    StringField111: TStringField;
    StringField112: TStringField;
    StringField113: TStringField;
    StringField114: TStringField;
    FloatField40: TFloatField;
    FloatField41: TFloatField;
    FloatField42: TFloatField;
    FloatField43: TFloatField;
    FloatField44: TFloatField;
    StringField115: TStringField;
    FloatField45: TFloatField;
    StringField116: TStringField;
    StringField117: TStringField;
    FloatField46: TFloatField;
    StringField118: TStringField;
    StringField119: TStringField;
    FloatField47: TFloatField;
    FloatField48: TFloatField;
    StringField120: TStringField;
    FloatField49: TFloatField;
    FloatField50: TFloatField;
    StringField121: TStringField;
    StringField122: TStringField;
    StringField123: TStringField;
    StringField124: TStringField;
    StringField125: TStringField;
    StringField126: TStringField;
    StringField127: TStringField;
    FloatField51: TFloatField;
    FloatField52: TFloatField;
    FloatField53: TFloatField;
    FloatField54: TFloatField;
    FloatField55: TFloatField;
    StringField128: TStringField;
    StringField129: TStringField;
    FloatField56: TFloatField;
    StringField130: TStringField;
    StringField131: TStringField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    StringField132: TStringField;
    StringField133: TStringField;

    procedure DataModuleCreate(Sender: TObject);
    procedure SC6c6_descontChange(Sender: TField);
    procedure SC6BeforePost(DataSet: TDataSet);
    procedure SC6c6_qtdvenChange(Sender: TField);
    procedure SC5BeforePost(DataSet: TDataSet);
    procedure SC6c6_servicChange(Sender: TField);
    procedure SC6c6_produtoChange(Sender: TField);
    procedure auxSC6AfterPost(DataSet: TDataSet);
    procedure SC6AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    campov:sTRING;
    Latitude, Longitude:Double;
    _voz:boolean;

    procedure prepara(datas:TClientDataSet;comando,banco:String);
    function deparau(Datao,datad:TDataSet):Integer;
    function depara(Datao,datad:TDataSet):Integer;
    function depara2(Datao,datad:TDataSet):Integer;
    function depara4(Datao,datad:TDataSet):Integer;
    function deparat(Datao,datad:TDataSet):Integer;

    procedure prep(DAtaSet:TDataset);
    procedure ExecSQL(comando,nome,conexa:String);
    procedure decompress(origem,destino:String);
    { Public declarations }
  end;

var
  _data: T_data;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

uses uprinc, uAtualiza;

{$R *.dfm}

function T_DATA.deparat;//(Datao: TDataSet; datad: TDataSet)
var i:Integer;
 aTask : TTask;

begin
  if not _data._SQL.Connected then
  Begin
    try
      _data._SQL.Open;
      _data.SetAmbiente.ExecuteMethod;
    Except
      ShowMessage('Off-line');
      Exit;
    end;
  End;


// ShowMessage(datao.RecordCount.ToString());
 //form1.PageControl1.ActivePageIndex:=0;
 datao.First;

//aTask := TTask.Create (procedure ()
   begin
 // GroupBox1.Enabled:=false;

 while not datao.Eof do
  Begin

   // if POS('STD',UPPERCASE(datao.FieldByName('da1_codpro').AsString))=0 then
    bEGIN
    datad.Insert;
    prep(datad);


    i:=0;
    while i < datao.FieldCount do
     Begin
       if (datad.FindField(datao.Fields[i].FieldName) <> nil)  then
       try
        if (datao.FindField(datao.Fields[i].FieldName).DataType = ftMemo) or (datao.FindField(datao.Fields[i].FieldName).DataType = ftBlob) then
           datad.FindField(datao.Fields[i].FieldName).AsString:=datao.Fields[i].AsString
        else
        datad.FindField(datao.Fields[i].FieldName).Value:=datao.Fields[i].Value;
       Except
        on e:Exception do
         Begin
          //frmatualiza.memo1.lines.Add(e.Message);
         ///  ShowMessage('Erro ao gravar campo: '+e.Message);
          // memo1.Lines.Add('Erro no campo: '+e.Message);
         End;
       end;
      i:=i+1;
     End;

     try

     datad.Post;

     if datad.ClassType=TClientDataSet then
          TClientDataSet(datad).ApplyUpdates(0);

     Except
     on e:Exception do
         Begin
       //   frmatualiza.memo1.lines.Add(e.Message);
       //    ShowMessage('Erro ao gravar: '+e.Message);
           datad.Cancel;
         End;
     end;
    end;
     datao.Next;


     //FORM1.pr2.value:=datao.RecNo;
    End;
  //  ShowMessage('Atualizado :'+datao.RecordCount.ToString());
      // FORM1.GroupBox1.Enabled:=true;
      end;

 //FORM1.Repaint;
 //FORM1.Refresh;

end;

procedure T_data.decompress(origem: string; destino: string);
var
  LInput, LOutput: TFileStream;
  LUnZip: TZDecompressionStream;

begin
  { Create the Input, Output, and Decompressed streams. }
  LInput := TFileStream.Create(origem, fmOpenRead);
  LOutput := TFileStream.Create(ChangeFileExt(destino, '.xml'), fmCreate);
  LUnZip := TZDecompressionStream.Create(LInput);

  { Decompress data. }
  LOutput.CopyFrom(LUnZip, 0);

  { Free the streams. }
  LUnZip.Free;
  LInput.Free;
  LOutput.Free;

end;

procedure T_data.auxSC6AfterPost(DataSet: TDataSet);
begin
    auxSC6.Close;
    auxSC6.SQL.Text:='Select sum(c6_qtdemp2) as PESO, sum(c6_total)/sum(c6_qtdem2) as MEDIO from SC6010 where C6_NUM='+#39+_DATA.SC5C5_NUM.AsString+#39;

    try
      auxSC6.Open();
    Except

    end;

end;

procedure T_data.DataModuleCreate(Sender: TObject);
var i:Integer;
begin


 {$IFDEF ANDROID}
  if fileExists(GetHOmePath + PathDelim+'dados.db') then
  Begin
    FdCon.Params.Database:=GetHOmePath + PathDelim+'dados.db';
    TRY
      FDcon.Open();
     Except
      on e:Exception do
       Begin
         ShowMessage(e.Message);
       End;
     End;

  End;
  {$ELSE}
//  if fileExists('E:\goodsales\eSales - Frente Loja\dados.db') then
  Begin
  //  FdCon.Params.Database:='E:\goodsales\eSales - Frente Loja\dados.db';
//    FDcon.Params.LoadFromFile('c:\virtus\db.conf');
    FDcon.Open();


  End;
  {$ENDIF}


  try
       conf.open;
    except
       aux.Close;
       aux.SQL.Text:=' ';
       aux.SQL.add('CREATE TABLE [conf](');
       aux.SQL.add('    [id] INT,');
       aux.SQL.add('    [bloqueio_regra] BOOLEAN,');
       aux.SQL.add('    [login_automatico] BOOLEAN,');
       aux.SQL.add('    [assinatura_obrigatoria] BOOLEAN,');
       aux.SQL.add('    [controla_rotas] BOOLEAN,');
       aux.SQL.add('    [checkin_obrigatorio] BOOLEAN);');
       aux.SQL.add('');

       aux.ExecSQL;
    end;


  i:=0;
  while i < _data.ComponentCount do
  Begin
  if (_data.Components[i].ClassType = TFDQuery) or (_data.Components[i].ClassType = TFDTable) then
   with TFDQuery(_data.Components[i]) do
   Begin
    //UpdateTransaction := FDTransaction1;
    FetchOptions.AssignedValues := [evRecordCountMode];
    FetchOptions.RecordCountMode := cmTotal;
    ResourceOptions.AssignedValues := [rvCmdExecMode];
    ResourceOptions.CmdExecMode := amNonBlocking;
    UpdateOptions.AssignedValues := [uvRefreshMode, uvAutoCommitUpdates];
    UpdateOptions.RefreshMode := rmAll;
    UpdateOptions.AutoCommitUpdates := True;
   End;
   i:=i+1;
  End;


  padrao.SQL.Text:='Select * from REGRA Where TIPO = '+#39+'PR'+#39;
  padrao.Open();

end;


procedure T_data.prepara;//(data: TClientDataSet; comando: string);
var erro:TStringList;

begin

     datas.Close;
     datas.RemoteServer:=DSM;
    _GeraSQL.Params[0].Text:=comando;
    _GeraSQL.Params[1].Text:=datas.Name;
    _GeraSQL.Params[2].Text:=banco;


   datas.ProviderName:=datas.Name;
  try
    _GeraSQL.ExecuteMethod;
     datas.FetchParams;
     datas.open;
     datas.refresh;
  Except
  on e:Exception do
    Begin
    //ShowMEssage(e.message);
     if pos('Socket Error',e.Message) > 0  then
      Begin
        try
           _sql.Close;
           _sql.Open;
           SetAmbiente.ExecuteMethod;
             datas.Close;

           datas.RemoteServer:=DSM;
          _GeraSQL.Params[0].Text:=comando;
          _GeraSQL.Params[1].Text:=datas.Name;
          _GeraSQL.Params[2].Text:=banco;
          _GeraSQL.ExecuteMethod;

           datas.ProviderName:=datas.Name;
           datas.FetchParams;
           datas.open;
           datas.refresh;
         Except
         End;


     End;
  end;



  end;

  end;


procedure T_data.SC5BeforePost(DataSet: TDataSet);
begin
//if TRIM(SELF.SC5c5_vend1.AsString) ='' then
   SELF.SC5c5_vend1.AsString:=FORM1.codvend;

 aux.Close;
 aux.SQL.Text:='update sc6010 set c6_filial ='+#39+SC5.FieldByName('C5_filial').AsString+#39+' Where C6_num='+#39+sc5.FieldByName('c5_num').AsString+#39;
 aux.ExecSQL
end;

procedure T_data.SC6AfterPost(DataSet: TDataSet);
begin
     _data.auxSC6.Close;
    _data.auxSC6.SQL.Text:='Select round(sum(c6_qtdemp2),2) as PESO, round(sum(c6_valor)/sum(c6_qtdemp2),2) as MEDIO from SC6010 where not c6_qtdemp2 is null and C6_NUM='+#39+_DATA.SC5C5_NUM.AsString+#39;
    _data.auxSC6.Open();

end;

procedure T_data.SC6BeforePost(DataSet: TDataSet);
var val1:Real;
begin


Begin

if not sa1.Active then
 Begin
  sa1.sql.Text:='Select * from SA1010 Where A1_COD = '+#39+ sc5c5_cliente.AsString+#39;
  sa1.Open();
 End;

 if sa1a1_cod.AsString <> sc5c5_cliente.AsString then
   Begin
      sa1.Close;
      sa1.sql.Text:='Select * from SA1010 Where A1_COD = '+#39+sc5c5_cliente.AsString+#39;
      sa1.Open();
    End;

_data.SC6C6_FILIAL.AsString:=_DATA.SC5C5_FILIAL.AsString;

if _data.SC6C6_ITEM.AsString = '' then
   Begin
     _data.AUX.Close;
     _data.AUX.SQL.Text:='Select max(cast(C6_ITEM as unsigned integer)) as IT from SC6010 where C6_NUM = '+#39+_data.SC5C5_NUM.AsString+#39;
     _data.AUX.Open();

     if not _data.aux.FieldByName('IT').IsNull then
        _data.SC6C6_ITEM.AsString:=IntToStr(_data.aux.FieldByName('IT').AsInteger+1)
     else
        _data.SC6C6_ITEM.AsString:='1';

   End;

 if _data.SC6C6_CLI.AsString ='' then
    _data.SC6C6_CLI.AsString:=form1.codvend;

 _data.SC6C6_NUM.AsString:=_data.SC5C5_NUM.AsString;

 {if form5<> nil then
  Begin
    _data.SC6c6_entreg.AsString:=FormatDateTime('YYYYMMDD',form5.c6_entreg.DateTime);
  End;}

_data.AUX.Close;
_data.AUX.SQL.Text:='Select * from regra where codigo = '+#39+_data.SC6C6_PRODUTO.AsString+#39+' and CLIENTE ='+#39+_DATA.SC5C5_CLIENTE.AsString+#39+' and TIPO ='+#39+'UN'+#39;
_data.AUX.Open();

if _data.AUX.RecordCount=0 then
Begin
  if _data.SC6c6_descont.AsFloat>0 then
    bEGIN



      if _data.SA1A1_TABELA.AsString = _data.padraoCODIGO.AsString then
      Begin


       _data.AUX.Close;
       _data.AUX.SQL.Text:='Select * from regra where codigo = '+#39+_data.SC6C6_PRODUTO.AsString+#39+' and CLIENTE ='+#39+_DATA.SC5C5_CLIENTE.AsString+#39+' and upper(TIPO) ='+#39+'PT'+#39+' AND VALOR <= '+TRUNC(_data.auxSC6PESO.AsFloat).ToString()+' order by VALOR desc';
       _data.AUX.Open();

      if _DATA.AUX.RecordCount = 0 then
       BEGIN
         _data.AUX.Close;
         _data.AUX.SQL.Text:='Select * from regra where codigo = '+#39+_data.SC6C6_PRODUTO.AsString+#39+'  and CLIENTE = '+#39+#39+' and upper(TIPO) ='+#39+'PT'+#39+' AND VALOR <= '+TRUNC(_data.auxSC6PESO.AsFloat).ToString()+' order by VALOR desc';
         _data.AUX.Open();
       eND;

      val1:=0;

      if _DATA.AUX.RecordCount > 0 then
          val1:=_DATA.aux.FieldByName('DESCONTO').AsFloat;

      if _data.SC6c6_descont.AsFloat > VAL1 then
         bEGIN
           _data.SC6c6_descont.AsFloat:=VAL1;
           ShowMEssage('Desconto não pode ser maior que :'+FloatToStr(val1));
         end;
     End
      else
        _data.SC6c6_descont.AsFloat:=0;
    end;
End;
  End;
end;

procedure T_data.SC6c6_descontChange(Sender: TField);
var val1:Real;
b,cli:String;
begin

IF _data.SC6C6_DESCONT.Value <> 0 THEN
 _data.SC6C6_VALDESC.Value:=RoundTo(_data.SC6C6_VALOR.Value - (_data.SC6C6_VALOR.Value * (_data.SC6C6_DESCONT.Value/100)),-2)
ELSE
 _data.SC6C6_VALDESC.Value:=RoundTo(_data.SC6C6_VALOR.Value,-2);

end;

procedure T_data.SC6c6_produtoChange(Sender: TField);
var
  b: String;
begin
  if SC6.State = dsInsert then
  Begin

    if not _data.SA1.active then
    Begin
      _data.SA1.Close;
      _data.SA1.SQL.Text := 'Select * from SA1010 Where A1_COD =' + #39 +
      _data.SC5c5_cliente.AsString + #39;
      _data.SA1.Open;
    End;

    if trim(_data.SA1A1_COD.AsString) <>  trim(_data.SC5c5_cliente.AsString) then
    Begin
      _data.SA1.Close;
      _data.SA1.SQL.Text := 'Select * from SA1010 Where A1_COD =' + #39 +
      _data.SC5c5_cliente.AsString + #39;
      _data.SA1.Open;
    End;


    if trim(_data.SA1A1_TABELA.AsString) <> '' then
      b := ' and DA1_CODTAB=' + #39 + _data.SA1A1_TABELA.AsString + #39;

    _data.DA1.Close;
    _data.DA1.SQL.Text := 'Select DA1010.* from DA1010 Where DA1_CODPRO = ' +
      #39 + _data.SC6c6_produto.AsString + #39 + '  and DA1_ESTADO=' + #39 +
      _data.SA1A1_EST.AsString + #39 + b;
    _data.DA1.Open();


   if _data.DA1.recordCount = 0 then
    Begin
     B:='';
     _data.DA1.Close;
    _data.DA1.SQL.Text := 'Select DA1010.* from DA1010 Where DA1_CODPRO = ' +
      #39 + _data.SC6c6_produto.AsString + #39 + '  and DA1_ESTADO=' + #39 +
      _data.SA1A1_EST.AsString + #39;
    _data.DA1.Open();

    End;

    if _data.DA1.RecordCount > 0 then
    Begin
      if _data.DA1da1_prcven.Value > 0 then
      Begin
        // _DATA.SC6C6_PRODUTO.AsString:=_data.da1DA1_CODPRO.AsString;
        _data.SC6c6_descri.AsString := _data.DA1da1_descri.AsString;
        _data.SC6c6_prcven.AsFloat := _data.DA1da1_prcven.Value;
        _data.SC6c6_potenci.AsFloat := _data.DA1da1_prcbas.AsFloat;
        _data.SC6c6_num.AsString := _data.SC5c5_num.AsString;

        _data.uvenda.Close;
        _data.uvenda.SQL.Text := 'Select * from uvenda where CLIENTE=' + #39 +
          _data.SC5c5_cliente.AsString + #39 + ' and (PRODUTO = ' + #39 +
          _data.DA1da1_codpro.AsString + #39 + ' )';
        _data.uvenda.Open();

        if _data.uvenda.RecordCount = 0 then
        Begin
          _data.uvenda.Close;
          _data.uvenda.SQL.Text := 'Select * from uvenda where CLIENTE=' + #39 +
            _data.SC5c5_cliente.AsString + #39 + ' and (PRODUTO = ' + #39 +
            copy(_data.DA1da1_codpro.AsString, 1,
            length(trim(_data.DA1da1_codpro.AsString)) - 1) + #39 + ' )';
          _data.uvenda.Open();

        End;


        // ShowMessage(_data.uvenda.SQL.Text);

        if _data.uvenda.RecordCount > 0 then
        Begin
          // ShowMessage('Achou');
          if (_data.uvendaPRECO.AsFloat > _data.DA1.FieldByName('DA1_PRCVEN')
            .AsFloat) then
            _data.SC6c6_prcven.AsFloat := _data.uvendaPRECO.AsFloat
          Else
          Begin
            _data.SC6c6_descont.AsFloat :=
              RoundTo(100 - ((_data.uvendaPRECO.AsFloat /
              _data.DA1.FieldByName('DA1_PRCVEN').AsFloat) * 100), -2);
          End;

        End;

        if _data.DA1da1_prcbas.AsFloat > 0 then
        bEGIN
          _data.SC6c6_servic.AsString := 'True';
          _data.SC6c6_mopc.AsString := '0000';
        end;

        _data.SB1.Close;
        _data.SB1.SQL.Text := 'Select * from SB1010 WHERE B1_COD = ' + #39 +
          _data.SC6c6_produto.AsString + #39;
        _data.SB1.Open();

       { _data.SB2.Close;
        _data.SB2.SQL.Text := 'Select * from SB2010 WHERE B2_COD = ' + #39 +
          _data.SC6c6_produto.AsString + #39;
        _data.SB2.Open();

        if _data.SB2B2_QATU.AsString <> '' then
          _data.SC6c6_sldalib.AsFloat := _data.SB2B2_QATU.AsFloat
        else}
          _data.SC6c6_sldalib.AsFloat := 0;

        _data.SC6c6_qtdven.AsFloat := 1;
        _data.SC6c6_qtdemp.AsFloat := _data.SB1.FieldByName('b1_peso').AsFloat;
        _data.SC6c6_qtdemp2.AsFloat := _data.SB1.FieldByName('b1_peso').AsFloat;
        _data.SC6c6_um.AsString := _data.SB1.FieldByName('b1_um').AsString;
        _data.SC6c6_op.AsString := _data.SB1.FieldByName('b1_LOCPAD').AsString;
      End;

    End;
  End;
end;

procedure T_data.SC6c6_qtdvenChange(Sender: TField);
var resto,val1,val2:Real;

function HaResto(Valor: Extended): Boolean;
var Inteira: Integer;
begin
  Inteira := Trunc(Valor);
  Result  := Inteira <> Valor;
end;
begin

if sc6.State <> dsBrowse then
Begin

 if _data.SC6c6_servic.AsString = 'True' then
   sc6C6_SLDALIB.Value:=sc6C6_QTDVEN.Value * SC6C6_POTENCI.Value
 else
   sc6C6_SLDALIB.Value:=0;


   _data.SC6C6_VALOR.Value:=_data.SC6C6_PRCVEN.Value * _data.SC6C6_QTDVEN.Value;

    IF _data.SC6C6_DESCONT.Value > 0 THEN
     _data.SC6C6_VALDESC.Value:=RoundTo(_data.SC6C6_VALOR.Value - (_data.SC6C6_VALOR.Value * (_data.SC6C6_DESCONT.Value/100)),-2)
    ELSE
      _data.SC6C6_VALDESC.Value:=RoundTo(_data.SC6C6_VALOR.Value,-2);
      _data.SC6C6_QTDEMP2.AsFloat:= _data.SC6C6_QTDEMP.AsFloat * _data.SC6C6_QTDVEN.Value;
End;
end;


procedure T_data.SC6c6_servicChange(Sender: TField);
begin

 Begin
  if _data.SC6c6_servic.AsString = 'True' then
     sc6C6_SLDALIB.Value:=sc6C6_QTDVEN.Value * SC6C6_POTENCI.Value
  else
    sc6C6_SLDALIB.Value:=0;
 End;
end;

function T_DATA.depara;//(Datao: TDataSet; datad: TDataSet)
var i:Integer;
 aTask : TTask;

begin
  if not _data._SQL.Connected then
  Begin
    try
      _data._SQL.Open;
      _data.SetAmbiente.ExecuteMethod;
    Except
      ShowMessage('Off-line');
      Exit;
    end;
  End;


// ShowMessage(datao.RecordCount.ToString());
 //form1.PageControl1.ActivePageIndex:=0;
 datao.First;

//aTask := TTask.Create (procedure ()
   begin
 // GroupBox1.Enabled:=false;

 while not datao.Eof do
  Begin

    datad.Insert;
    prep(datad);


    i:=0;
    while i < datao.FieldCount do
     Begin
      if (datad.FindField(datao.Fields[i].FieldName) <> nil)  then
       try
        if (datao.FindField(datao.Fields[i].FieldName).DataType = ftMemo) or (datao.FindField(datao.Fields[i].FieldName).DataType = ftBlob) then
           datad.FindField(datao.Fields[i].FieldName).AsString:=datao.Fields[i].AsString
        else
        datad.FindField(datao.Fields[i].FieldName).Value:=datao.Fields[i].Value;
       Except
        on e:Exception do
         Begin
           //frmAtualiza.lblStatus.Text:='Erro: '+e.Message;
         End;
       end;
      i:=i+1;
     End;

     try

      datad.Post;
      //frmAtualiza.lblStatus.Text:='Importando: '+datao.RecNo.ToString;


      if datad.ClassType=TClientDataSet then
         TClientDataSet(datad).ApplyUpdates(0);

     Except
     on e:Exception do
         Begin
       //   frmatualiza.memo1.lines.Add(e.Message);
           ShowMessage('Erro ao gravar: '+e.Message);
         //  frmAtualiza.lblStatus.Text:='Erro: '+e.Message;

           datad.Cancel;
         End;
     end;
     datao.Next;
   //  Application.ProcessMessages;

     //FORM1.pr2.value:=datao.RecNo;
    End;
   // ShowMessage('Atualizado :'+datao.RecordCount.ToString());
      // FORM1.GroupBox1.Enabled:=true;
      end;

 //FORM1.Repaint;
 //FORM1.Refresh;

end;


function T_DATA.deparau;//(Datao: TDataSet; datad: TDataSet)
var i:Integer;

begin
   begin

    datad.Insert;
    //prep(datad);


    i:=0;
    while i < datao.FieldCount do
     Begin

     { try
           if (datad.Fields[i].IsNull) or (datad.Fields[i].AsString='') then
            Begin

              if (datad.Fields[i].DataType = ftSmallint) or (datad.Fields[i].DataType =  ftInteger) or (datad.Fields[i].DataType =  ftWord) or (datad.Fields[i].DataType =  ftFloat) or (datad.Fields[i].DataType =   ftCurrency)
                 or (datad.Fields[i].DataType =   ftTime)  or (datad.Fields[i].DataType =  ftLargeint)
                 or (datad.Fields[i].DataType =   ftTimeStamp) or (datad.Fields[i].DataType =  ftFMTBcd) or (datad.Fields[i].DataType =  ftLongWord)
                 or (datad.Fields[i].DataType =   ftShortint) or (datad.Fields[i].DataType =   ftByte) or (datad.Fields[i].DataType =   ftExtended)
                 or (datad.Fields[i].DataType =   ftConnection) or (datad.Fields[i].DataType =   ftParams) or (datad.Fields[i].DataType =   ftStream)
                 or (datad.Fields[i].DataType =  ftSingle) then
                 datad.Fields[i].value:=0
              else
              if datad.Fields[i].DataType <> ftAutoInc then
                 datad.Fields[i].value:='';
            End;
      EXCEPT

      End;}




      if (datad.FindField(datao.Fields[i].FieldName) <> nil)  then
       try
        if (datao.FindField(datao.Fields[i].FieldName).DataType = ftMemo) or (datao.FindField(datao.Fields[i].FieldName).DataType = ftBlob) then
           datad.FindField(datao.Fields[i].FieldName).AsString:=datao.Fields[i].AsString
        else
        datad.FindField(datao.Fields[i].FieldName).Value:=datao.Fields[i].Value;
       Except
        on e:Exception do
         Begin
           //frmAtualiza.lblStatus.Text:='Erro: '+e.Message;
         End;
       end;
      i:=i+1;
     End;

     try

      datad.Post;

     Except
     on e:Exception do
         Begin
           //ShowMessage('Erro ao gravar: '+e.Message);
           datad.Cancel;
         End;
     end;
    End;

end;

function T_data.depara2;//(Datao: TDataSet; datad: TDataSet)
var i:Integer;


begin
 datao.First;

//aTask := TTask.Create (procedure ()
   begin
 // GroupBox1.Enabled:=false;

 while not datao.Eof do
  Begin
    datad.Insert;
    prep(datad);

    i:=0;
    while i < datao.FieldCount do
     Begin
      //if datad.FindField(datao.Fields[i].FieldName) <> nil then
       try
        if (datao.FindField(datao.Fields[i].FieldName).DataType = ftString) or (datao.FindField(datao.Fields[i].FieldName).DataType = ftMemo) or (datao.FindField(datao.Fields[i].FieldName).DataType = ftBlob) then
           datad.FindField(datao.Fields[i].FieldName).AsString:=datao.Fields[i].AsString
        else
        datad.FindField(datao.Fields[i].FieldName).Value:=datao.Fields[i].Value;
       Except
        on e:Exception do
         Begin
         End;
       end;
      i:=i+1;
     End;

     try
      if UPPERCASE(datao.Name) ='SC6' then
       Begin
//         datad.FindField('C6_CLI').Value:=datao.FindField('C5_VEND1').AsString;;
         datad.FindField('C6_FILIAL').AsString:=datao.FindField('C6_FILIAL').AsString;
       End;

      if UPPERCASE(datao.Name) ='SC5' then
       Begin
      //   datad.FindField('C5_VEND1').Value:=form1.codvend;
         datad.FindField('C5_FILIAL').AsString:=datao.FindField('C5_FILIAL').AsString;
       End;

       datad.FindField('visual_cli').Value:=form1.codcli;


         datad.Post;
       if datad.ClassType=TClientDataSet then
          TClientDataSet(datad).ApplyUpdates(0);


     Except
     on e:Exception do
         Begin
           ShowMessage(e.Message);
           datad.Cancel;
         End;
     end;
     datao.Next;
     datad.Close;
     datad.Open;

    End;
       //GroupBox1.Enabled:=true;
      end;

// self.Repaint;
// self.Refresh;

end;

function T_data.depara4;//(Datao: TDataSet; datad: TDataSet)
var i:Integer;


begin
 //datao.First;

//aTask := TTask.Create (procedure ()
   begin
 // GroupBox1.Enabled:=false;

 //while not datao.Eof do
  Begin
    datad.Insert;
    prep(datad);

    i:=0;
    while i < datao.FieldCount do
     Begin
      //if datad.FindField(datao.Fields[i].FieldName) <> nil then
       try
        if (datao.FindField(datao.Fields[i].FieldName).DataType = ftMemo) or (datao.FindField(datao.Fields[i].FieldName).DataType = ftBlob) then
           datad.FindField(datao.Fields[i].FieldName).AsString:=datao.Fields[i].AsString
        else
        datad.FindField(datao.Fields[i].FieldName).Value:=datao.Fields[i].Value;
       Except
        on e:Exception do
         Begin
          // memo1.Lines.Add('Erro no campo: '+e.Message);
         End;
       end;
      i:=i+1;
     End;

     try
      if UPPERCASE(datao.Name) ='SC6' then
       Begin
//         datad.FindField('C6_CLI').Value:=form1.codvend;
         datad.FindField('C6_FILIAL').AsString:=datao.FindField('C6_FILIAL').AsString;
       End;

      if UPPERCASE(datao.Name) ='SC5' then
       Begin
  //       datad.FindField('C5_VEND1').Value:=form1.codvend;
         datad.FindField('C5_FILIAL').AsString:=datao.FindField('C5_FILIAL').AsString;
//         datad.FindField('push').AsString:=push;
       End;
       datad.FindField('visual_cli').Value:=form1.codcli;

         datad.Post;
       if datad.ClassType=TClientDataSet then
          TClientDataSet(datad).ApplyUpdates(0);
     Except
     on e:Exception do
         Begin
           datad.Cancel;
         End;
     end;
     //datao.Next;

    End;
       //GroupBox1.Enabled:=true;
      end;

 //self.Repaint;
 //self.Refresh;

end;

Procedure T_data.prep(DAtaSet: TDataSet);
var i:Integer;
begin
i:=0;
  while i< DataSet.FieldCount do
 Begin
 TRY
   if (DataSet.Fields[i].IsNull) or (DataSet.Fields[i].AsString='') then
    Begin

      if (DataSet.Fields[i].DataType = ftSmallint) or (DataSet.Fields[i].DataType =  ftInteger) or (DataSet.Fields[i].DataType =  ftWord) or (DataSet.Fields[i].DataType =  ftFloat) or (DataSet.Fields[i].DataType =   ftCurrency)
         or (DataSet.Fields[i].DataType =   ftTime)  or (DataSet.Fields[i].DataType =  ftLargeint)
         or (DataSet.Fields[i].DataType =   ftTimeStamp) or (DataSet.Fields[i].DataType =  ftFMTBcd) or (DataSet.Fields[i].DataType =  ftLongWord)
         or (DataSet.Fields[i].DataType =   ftShortint) or (DataSet.Fields[i].DataType =   ftByte) or (DataSet.Fields[i].DataType =   ftExtended)
         or (DataSet.Fields[i].DataType =   ftConnection) or (DataSet.Fields[i].DataType =   ftParams) or (DataSet.Fields[i].DataType =   ftStream)
         or (DataSet.Fields[i].DataType =  ftSingle) then
         DataSet.Fields[i].value:=0
      else
      if DataSet.Fields[i].DataType <> ftAutoInc then
         DataSet.Fields[i].value:='';
    End;
   EXCEPT
    End;
     try
     if (DataSet.Fields[i].DataType = ftString) then
         DataSet.Fields[i].AsString:=uppercase(DataSet.Fields[i].AsString);
     Except

     End;
    i:=i+1;
 End;
end;

Procedure T_data.ExecSQL(comando: string; nome: string; conexa: string);
begin
  _ExecSQL.Params[0].Text:=comando;
  _ExecSQL.Params[1].Text:=nome;
  _ExecSQL.Params[2].Text:=conexa;

  try
     _ExecSQL.ExecuteMethod;


  Except
  on e:Exception do
   Begin
     ShowMessage(e.Message);
   End;
  end;
end;



end.
