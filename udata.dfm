object _data: T_data
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 653
  Width = 1037
  object VENDEDOR: TFDQuery
    Connection = FdCon
    FetchOptions.AssignedValues = [evRecordCountMode]
    FetchOptions.RecordCountMode = cmTotal
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amNonBlocking
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvCountUpdatedRecords, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.RefreshMode = rmAll
    UpdateOptions.CountUpdatedRecords = False
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    SQL.Strings = (
      'Select * from VENDEDOR')
    Left = 376
    Top = 360
    object VENDEDORCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 200
    end
    object VENDEDORNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 250
    end
    object VENDEDOREMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 200
    end
  end
  object _upreco: TClientDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = DSM
    Left = 256
    Top = 270
  end
  object uvenda: TFDQuery
    Connection = FdCon
    FetchOptions.AssignedValues = [evRecordCountMode]
    FetchOptions.RecordCountMode = cmTotal
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amNonBlocking
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvCountUpdatedRecords, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.RefreshMode = rmAll
    UpdateOptions.CountUpdatedRecords = False
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    SQL.Strings = (
      'SELECT * FROM uvenda')
    Left = 40
    Top = 512
    object uvendaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 100
    end
    object uvendaPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Size = 200
    end
    object uvendaUVENDA: TStringField
      FieldName = 'UVENDA'
      Origin = 'UVENDA'
    end
    object uvendaPRECO: TFloatField
      FieldName = 'PRECO'
      Origin = 'PRECO'
    end
  end
  object cnp2: TFDQuery
    Connection = FdCon
    FetchOptions.AssignedValues = [evRecordCountMode]
    FetchOptions.RecordCountMode = cmTotal
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amNonBlocking
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvCountUpdatedRecords, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.RefreshMode = rmAll
    UpdateOptions.CountUpdatedRecords = False
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    SQL.Strings = (
      'SELECT * FROM cnp2')
    Left = 40
    Top = 464
    object cnp2CODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object cnp2SEQ: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SEQ'
      Origin = 'SEQ'
    end
    object cnp2DIAS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DIAS'
      Origin = 'DIAS'
    end
    object cnp2PERCENTUAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PERCENTUAL'
      Origin = 'PERCENTUAL'
    end
  end
  object _AUX2: TClientDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = DSM
    Left = 540
    Top = 296
  end
  object usu: TFDQuery
    Connection = FdCon
    FetchOptions.AssignedValues = [evRecordCountMode]
    FetchOptions.RecordCountMode = cmTotal
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amNonBlocking
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvCountUpdatedRecords, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.RefreshMode = rmAll
    UpdateOptions.CountUpdatedRecords = False
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    SQL.Strings = (
      'SELECT * FROM usuario')
    Left = 24
    Top = 360
  end
  object sequencial: TClientDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = DSM
    Left = 456
    Top = 224
  end
  object OFICINA: TFDQuery
    Connection = FdCon
    FetchOptions.AssignedValues = [evRecordCountMode]
    FetchOptions.RecordCountMode = cmTotal
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amNonBlocking
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvCountUpdatedRecords, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.RefreshMode = rmAll
    UpdateOptions.CountUpdatedRecords = False
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    SQL.Strings = (
      'SELECT * FROM OFICINA')
    Left = 456
    Top = 368
    object OFICINAPEDIDO: TStringField
      FieldName = 'PEDIDO'
      Origin = 'PEDIDO'
      Size = 50
    end
    object OFICINATECNICO: TStringField
      FieldName = 'TECNICO'
      Origin = 'TECNICO'
      Size = 50
    end
    object OFICINAOFICINA: TStringField
      FieldName = 'OFICINA'
      Origin = 'OFICINA'
      Size = 50
    end
    object OFICINADATAE: TDateField
      FieldName = 'DATAE'
      Origin = 'DATAE'
    end
    object OFICINADATAS: TDateField
      FieldName = 'DATAS'
      Origin = 'DATAS'
    end
    object OFICINAHORAE: TTimeField
      FieldName = 'HORAE'
      Origin = 'HORAE'
    end
    object OFICINAHORAS: TTimeField
      FieldName = 'HORAS'
      Origin = 'HORAS'
    end
    object OFICINANOMEOF: TStringField
      FieldName = 'NOMEOF'
      Origin = 'NOMEOF'
      Size = 250
    end
    object OFICINANOMETEC: TStringField
      FieldName = 'NOMETEC'
      Origin = 'NOMETEC'
      Size = 250
    end
    object OFICINAVEND: TStringField
      FieldName = 'VEND'
    end
  end
  object TPG: TFDQuery
    Connection = FdCon
    FetchOptions.AssignedValues = [evRecordCountMode]
    FetchOptions.RecordCountMode = cmTotal
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amNonBlocking
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvCountUpdatedRecords, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.RefreshMode = rmAll
    UpdateOptions.CountUpdatedRecords = False
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    SQL.Strings = (
      'SELECT distinct * FROM TPG')
    Left = 48
    Top = 312
    object TPGCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 50
    end
    object TPGDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 250
    end
  end
  object PED_PAG: TFDQuery
    Connection = FdCon
    FetchOptions.AssignedValues = [evRecordCountMode]
    FetchOptions.RecordCountMode = cmTotal
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amNonBlocking
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvCountUpdatedRecords, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.RefreshMode = rmAll
    UpdateOptions.CountUpdatedRecords = False
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    SQL.Strings = (
      'SELECT * FROM PED_PAG')
    Left = 472
    Top = 432
    object PED_PAGPEDIDO: TStringField
      FieldName = 'PEDIDO'
      Origin = 'PEDIDO'
      Required = True
      Size = 100
    end
    object PED_PAGCOND: TStringField
      FieldName = 'COND'
      Origin = 'COND'
      Size = 150
    end
    object PED_PAGINICIO: TDateField
      FieldName = 'INICIO'
      Origin = 'INICIO'
    end
    object PED_PAGVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
    end
    object PED_PAGPARCELA: TIntegerField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
    end
    object PED_PAGVEND: TStringField
      FieldName = 'VEND'
    end
    object PED_PAGTPG: TStringField
      FieldName = 'TPG'
      Size = 10
    end
  end
  object GRUPO3: TFDQuery
    Connection = FdCon
    FetchOptions.AssignedValues = [evRecordCountMode]
    FetchOptions.RecordCountMode = cmTotal
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amNonBlocking
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvCountUpdatedRecords, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.RefreshMode = rmAll
    UpdateOptions.CountUpdatedRecords = False
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    SQL.Strings = (
      'SELECT * FROM GRUPO')
    Left = 376
    Top = 464
    object StringField3: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 200
    end
    object StringField4: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 250
    end
  end
  object GRUPO2: TFDQuery
    Connection = FdCon
    FetchOptions.AssignedValues = [evRecordCountMode]
    FetchOptions.RecordCountMode = cmTotal
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amNonBlocking
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvCountUpdatedRecords, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.RefreshMode = rmAll
    UpdateOptions.CountUpdatedRecords = False
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    SQL.Strings = (
      'SELECT * FROM GRUPO')
    Left = 312
    Top = 464
    object StringField1: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 200
    end
    object StringField2: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 250
    end
  end
  object GRUPO: TFDQuery
    Connection = FdCon
    FetchOptions.AssignedValues = [evRecordCountMode]
    FetchOptions.RecordCountMode = cmTotal
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amNonBlocking
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvCountUpdatedRecords, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.RefreshMode = rmAll
    UpdateOptions.CountUpdatedRecords = False
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    SQL.Strings = (
      'SELECT * FROM GRUPO'
      'where nivel='#39'1'#39' AND MASTER='#39#39
      'order by DESCRICAO')
    Left = 248
    Top = 464
    object GRUPOCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 200
    end
    object GRUPODESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 250
    end
  end
  object emps: TFDQuery
    Connection = FdCon
    FetchOptions.AssignedValues = [evRecordCountMode]
    FetchOptions.RecordCountMode = cmTotal
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amNonBlocking
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvCountUpdatedRecords, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.RefreshMode = rmAll
    UpdateOptions.CountUpdatedRecords = False
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    SQL.Strings = (
      'Select * from empresa')
    Left = 320
    Top = 352
    object empsNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 302
    end
    object empsSIGLA: TStringField
      FieldName = 'SIGLA'
      Origin = 'SIGLA'
      Required = True
      Size = 12
    end
    object empsFILIAL: TStringField
      FieldName = 'FILIAL'
      Origin = 'FILIAL'
      Required = True
      Size = 10
    end
    object empsTXCOFINS: TBCDField
      FieldName = 'TXCOFINS'
      Origin = 'TXCOFINS'
      Precision = 18
      Size = 2
    end
    object empsTXPIS: TBCDField
      FieldName = 'TXPIS'
      Origin = 'TXPIS'
      Precision = 18
      Size = 2
    end
    object empsD_E_L_E_T_: TStringField
      FieldName = 'D_E_L_E_T_'
      Origin = 'D_E_L_E_T_'
      Size = 4
    end
    object empsR_E_C_D_E_L_: TIntegerField
      FieldName = 'R_E_C_D_E_L_'
      Origin = 'R_E_C_D_E_L_'
    end
    object empsR_E_C_N_O_: TIntegerField
      FieldName = 'R_E_C_N_O_'
      Origin = 'R_E_C_N_O_'
    end
    object empsOREC: TIntegerField
      FieldName = 'OREC'
      Origin = 'OREC'
    end
  end
  object _aux: TClientDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = DSM
    Left = 540
    Top = 240
  end
  object _sc6: TClientDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = DSM
    Left = 540
    Top = 176
  end
  object _SC5: TClientDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = DSM
    Left = 540
    Top = 120
  end
  object aux3: TFDQuery
    Connection = FdCon
    FetchOptions.AssignedValues = [evRecordCountMode]
    FetchOptions.RecordCountMode = cmTotal
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amNonBlocking
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvCountUpdatedRecords, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.RefreshMode = rmAll
    UpdateOptions.CountUpdatedRecords = False
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    Left = 320
    Top = 400
  end
  object aux2: TFDQuery
    Connection = FdCon
    FetchOptions.AssignedValues = [evRecordCountMode]
    FetchOptions.RecordCountMode = cmTotal
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amNonBlocking
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvCountUpdatedRecords, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.RefreshMode = rmAll
    UpdateOptions.CountUpdatedRecords = False
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    Left = 248
    Top = 352
  end
  object REGRA: TFDQuery
    Connection = FdCon
    FetchOptions.AssignedValues = [evRecordCountMode]
    FetchOptions.RecordCountMode = cmTotal
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amNonBlocking
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvCountUpdatedRecords, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.RefreshMode = rmAll
    UpdateOptions.CountUpdatedRecords = False
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    SQL.Strings = (
      'Select * from REGRA')
    Left = 248
    Top = 408
    object REGRACODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 250
    end
    object REGRATIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 2
    end
    object REGRAVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object REGRADESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
    end
    object REGRACLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
  end
  object ATU: TClientDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = DSM
    Left = 376
    Top = 296
  end
  object SE4: TFDQuery
    Connection = FdCon
    FetchOptions.AssignedValues = [evRecordCountMode]
    FetchOptions.RecordCountMode = cmTotal
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amNonBlocking
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvCountUpdatedRecords, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.RefreshMode = rmAll
    UpdateOptions.CountUpdatedRecords = False
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    SQL.Strings = (
      'SELECT * FROM SE4010')
    Left = 192
    Top = 408
    object SE4E4_PORTADO: TStringField
      FieldName = 'E4_PORTADO'
      Origin = 'E4_PORTADO'
      Size = 10
    end
    object SE4E4_FILIAL: TStringField
      FieldName = 'E4_FILIAL'
      Origin = 'E4_FILIAL'
      Size = 10
    end
    object SE4E4_CODIGO: TStringField
      FieldName = 'E4_CODIGO'
      Origin = 'E4_CODIGO'
      Size = 10
    end
    object SE4E4_TIPO: TStringField
      FieldName = 'E4_TIPO'
      Origin = 'E4_TIPO'
      Size = 10
    end
    object SE4E4_COND: TStringField
      FieldName = 'E4_COND'
      Origin = 'E4_COND'
      Size = 40
    end
    object SE4E4_DESCRI: TStringField
      FieldName = 'E4_DESCRI'
      Origin = 'E4_DESCRI'
      Size = 250
    end
    object SE4E4_IPI: TStringField
      FieldName = 'E4_IPI'
      Origin = 'E4_IPI'
      Size = 10
    end
    object SE4E4_DDD: TStringField
      FieldName = 'E4_DDD'
      Origin = 'E4_DDD'
      Size = 10
    end
    object SE4E4_DESCFIN: TFloatField
      FieldName = 'E4_DESCFIN'
      Origin = 'E4_DESCFIN'
    end
    object SE4E4_DIADESC: TFloatField
      FieldName = 'E4_DIADESC'
      Origin = 'E4_DIADESC'
    end
    object SE4E4_FORMA: TStringField
      FieldName = 'E4_FORMA'
      Origin = 'E4_FORMA'
      Size = 10
    end
    object SE4E4_ACRSFIN: TFloatField
      FieldName = 'E4_ACRSFIN'
      Origin = 'E4_ACRSFIN'
    end
    object SE4E4_SOLID: TStringField
      FieldName = 'E4_SOLID'
      Origin = 'E4_SOLID'
      Size = 10
    end
    object SE4E4_ACRES: TStringField
      FieldName = 'E4_ACRES'
      Origin = 'E4_ACRES'
      Size = 10
    end
    object SE4E4_PERCOM: TFloatField
      FieldName = 'E4_PERCOM'
      Origin = 'E4_PERCOM'
    end
    object SE4E4_SUPER: TFloatField
      FieldName = 'E4_SUPER'
      Origin = 'E4_SUPER'
    end
    object SE4E4_INFER: TFloatField
      FieldName = 'E4_INFER'
      Origin = 'E4_INFER'
    end
    object SE4E4_FATOR: TFloatField
      FieldName = 'E4_FATOR'
      Origin = 'E4_FATOR'
    end
    object SE4E4_PLANO: TStringField
      FieldName = 'E4_PLANO'
      Origin = 'E4_PLANO'
      Size = 10
    end
    object SE4E4_JURCART: TStringField
      FieldName = 'E4_JURCART'
      Origin = 'E4_JURCART'
      Size = 10
    end
    object SE4R_E_C_N_O_: TIntegerField
      FieldName = 'R_E_C_N_O_'
      Origin = 'R_E_C_N_O_'
    end
    object SE4R_E_C_D_E_L_: TIntegerField
      FieldName = 'R_E_C_D_E_L_'
      Origin = 'R_E_C_D_E_L_'
    end
    object SE4D_E_L_E_T_: TStringField
      FieldName = 'D_E_L_E_T_'
      Origin = 'D_E_L_E_T_'
      Size = 2
    end
  end
  object SC6: TFDQuery
    BeforePost = SC6BeforePost
    IndexesActive = False
    Connection = FdCon
    FetchOptions.AssignedValues = [evRecordCountMode]
    FetchOptions.RecordCountMode = cmTotal
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amNonBlocking
    UpdateOptions.AssignedValues = [uvUpdateMode, uvLockWait, uvRefreshMode, uvCountUpdatedRecords, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.RefreshMode = rmAll
    UpdateOptions.CountUpdatedRecords = False
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    SQL.Strings = (
      'SELECT * FROM SC6010')
    Left = 192
    Top = 464
    object SC6c6_op: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_op'
      LookupDataSet = _aux
      Origin = 'c6_op'
      Size = 10
    end
    object SC6c6_barra: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_barra'
      Origin = 'c6_barra'
      Size = 15
    end
    object SC6c6_ok: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_ok'
      Origin = 'c6_ok'
      Size = 10
    end
    object SC6c6_nfori: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_nfori'
      Origin = 'c6_nfori'
      Size = 10
    end
    object SC6c6_seriori: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_seriori'
      Origin = 'c6_seriori'
      Size = 10
    end
    object SC6c6_itemori: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_itemori'
      Origin = 'c6_itemori'
      Size = 10
    end
    object SC6c6_ipidev: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_ipidev'
      Origin = 'c6_ipidev'
    end
    object SC6c6_identb6: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_identb6'
      Origin = 'c6_identb6'
      Size = 10
    end
    object SC6c6_blq: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_blq'
      Origin = 'c6_blq'
      Size = 10
    end
    object SC6c6_picmret: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_picmret'
      Origin = 'c6_picmret'
    end
    object SC6c6_codiss: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_codiss'
      Origin = 'c6_codiss'
      Size = 10
    end
    object SC6c6_grade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_grade'
      Origin = 'c6_grade'
      Size = 10
    end
    object SC6c6_itemgrd: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_itemgrd'
      Origin = 'c6_itemgrd'
      Size = 10
    end
    object SC6c6_lotectl: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_lotectl'
      Origin = 'c6_lotectl'
      Size = 10
    end
    object SC6c6_numlote: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_numlote'
      Origin = 'c6_numlote'
      Size = 10
    end
    object SC6c6_dtvalid: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_dtvalid'
      Origin = 'c6_dtvalid'
      Size = 10
    end
    object SC6c6_numorc: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_numorc'
      Origin = 'c6_numorc'
      Size = 10
    end
    object SC6c6_chassi: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_chassi'
      Origin = 'c6_chassi'
      Size = 17
    end
    object SC6c6_opc: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_opc'
      Origin = 'c6_opc'
      Size = 80
    end
    object SC6c6_localiz: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_localiz'
      Origin = 'c6_localiz'
      Size = 15
    end
    object SC6c6_numseri: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_numseri'
      Origin = 'c6_numseri'
    end
    object SC6c6_numop: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_numop'
      Origin = 'c6_numop'
      Size = 10
    end
    object SC6c6_itemop: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_itemop'
      Origin = 'c6_itemop'
      Size = 10
    end
    object SC6c6_clasfis: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_clasfis'
      Origin = 'c6_clasfis'
      Size = 10
    end
    object SC6c6_qtdrese: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_qtdrese'
      Origin = 'c6_qtdrese'
    end
    object SC6c6_contrat: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_contrat'
      Origin = 'c6_contrat'
      Size = 10
    end
    object SC6c6_numos: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_numos'
      Origin = 'c6_numos'
      Size = 10
    end
    object SC6c6_numosfa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_numosfa'
      Origin = 'c6_numosfa'
      Size = 10
    end
    object SC6c6_codfab: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_codfab'
      Origin = 'c6_codfab'
      Size = 10
    end
    object SC6c6_lojafa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_lojafa'
      Origin = 'c6_lojafa'
      Size = 10
    end
    object SC6c6_itemcon: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_itemcon'
      Origin = 'c6_itemcon'
      Size = 10
    end
    object SC6c6_tpop: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_tpop'
      Origin = 'c6_tpop'
      Size = 10
    end
    object SC6c6_revisao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_revisao'
      Origin = 'c6_revisao'
      Size = 10
    end
    object SC6c6_servic: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_servic'
      Origin = 'c6_servic'
      Size = 10
    end
    object SC6c6_endpad: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_endpad'
      Origin = 'c6_endpad'
      Size = 15
    end
    object SC6c6_tpestr: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_tpestr'
      Origin = 'c6_tpestr'
      Size = 10
    end
    object SC6c6_contrt: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_contrt'
      Origin = 'c6_contrt'
      Size = 15
    end
    object SC6c6_tpcontr: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_tpcontr'
      Origin = 'c6_tpcontr'
      Size = 10
    end
    object SC6c6_itcontr: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_itcontr'
      Origin = 'c6_itcontr'
      Size = 10
    end
    object SC6c6_geroupv: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_geroupv'
      Origin = 'c6_geroupv'
      Size = 10
    end
    object SC6c6_projpms: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_projpms'
      Origin = 'c6_projpms'
      Size = 10
    end
    object SC6c6_edtpms: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_edtpms'
      Origin = 'c6_edtpms'
      Size = 12
    end
    object SC6c6_taskpms: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_taskpms'
      Origin = 'c6_taskpms'
      Size = 12
    end
    object SC6c6_trt: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_trt'
      Origin = 'c6_trt'
      Size = 10
    end
    object SC6c6_qtdemp: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_qtdemp'
      Origin = 'c6_qtdemp'
    end
    object SC6c6_qtdemp2: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_qtdemp2'
      Origin = 'c6_qtdemp2'
    end
    object SC6c6_projet: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_projet'
      Origin = 'c6_projet'
      Size = 10
    end
    object SC6c6_itproj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_itproj'
      Origin = 'c6_itproj'
      Size = 10
    end
    object SC6c6_potenci: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_potenci'
      Origin = 'c6_potenci'
    end
    object SC6c6_licita: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_licita'
      Origin = 'c6_licita'
      Size = 10
    end
    object SC6c6_regwms: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_regwms'
      Origin = 'c6_regwms'
      Size = 10
    end
    object SC6c6_mopc: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_mopc'
      Origin = 'c6_mopc'
      Size = 80
    end
    object SC6c6_numcp: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_numcp'
      Origin = 'c6_numcp'
      Size = 10
    end
    object SC6c6_filial: TStringField
      FieldName = 'c6_filial'
      Origin = 'c6_filial'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object SC6c6_item: TStringField
      FieldName = 'c6_item'
      Origin = 'c6_item'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object SC6c6_produto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_produto'
      Origin = 'c6_produto'
      OnChange = SC6c6_produtoChange
    end
    object SC6c6_um: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_um'
      Origin = 'c6_um'
      Size = 10
    end
    object SC6c6_qtdven: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_qtdven'
      Origin = 'c6_qtdven'
      OnChange = SC6c6_qtdvenChange
    end
    object SC6c6_prcven: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_prcven'
      Origin = 'c6_prcven'
      currency = True
    end
    object SC6c6_valor: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_valor'
      Origin = 'c6_valor'
      currency = True
    end
    object SC6c6_qtdlib: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_qtdlib'
      Origin = 'c6_qtdlib'
    end
    object SC6c6_qtdlib2: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_qtdlib2'
      Origin = 'c6_qtdlib2'
    end
    object SC6c6_segum: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_segum'
      Origin = 'c6_segum'
      Size = 10
    end
    object SC6c6_sldalib: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_sldalib'
      Origin = 'c6_sldalib'
    end
    object SC6c6_oper: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_oper'
      Origin = 'c6_oper'
      Size = 10
    end
    object SC6c6_tes: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_tes'
      Origin = 'c6_tes'
      Size = 10
    end
    object SC6c6_unsven: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_unsven'
      Origin = 'c6_unsven'
    end
    object SC6c6_local: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_local'
      Origin = 'c6_local'
      Size = 10
    end
    object SC6c6_cf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_cf'
      Origin = 'c6_cf'
      Size = 10
    end
    object SC6c6_qtdent: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_qtdent'
      Origin = 'c6_qtdent'
    end
    object SC6c6_qtdent2: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_qtdent2'
      Origin = 'c6_qtdent2'
    end
    object SC6c6_cli: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_cli'
      Origin = 'c6_cli'
      Size = 10
    end
    object SC6c6_descont: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_descont'
      Origin = 'c6_descont'
      OnChange = SC6c6_descontChange
    end
    object SC6c6_valdesc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_valdesc'
      Origin = 'c6_valdesc'
      currency = True
    end
    object SC6c6_entreg: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_entreg'
      Origin = 'c6_entreg'
      Size = 10
    end
    object SC6c6_la: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_la'
      Origin = 'c6_la'
      Size = 10
    end
    object SC6c6_loja: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_loja'
      Origin = 'c6_loja'
      Size = 10
    end
    object SC6c6_nota: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_nota'
      Origin = 'c6_nota'
      Size = 10
    end
    object SC6c6_serie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_serie'
      Origin = 'c6_serie'
      Size = 10
    end
    object SC6c6_datfat: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_datfat'
      Origin = 'c6_datfat'
      Size = 10
    end
    object SC6c6_num: TStringField
      FieldName = 'c6_num'
      Origin = 'c6_num'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object SC6c6_comis1: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_comis1'
      Origin = 'c6_comis1'
    end
    object SC6c6_comis2: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_comis2'
      Origin = 'c6_comis2'
    end
    object SC6c6_comis3: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_comis3'
      Origin = 'c6_comis3'
    end
    object SC6c6_comis4: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_comis4'
      Origin = 'c6_comis4'
    end
    object SC6c6_comis5: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_comis5'
      Origin = 'c6_comis5'
    end
    object SC6c6_pedcli: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_pedcli'
      Origin = 'c6_pedcli'
      Size = 10
    end
    object SC6c6_descri: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_descri'
      Origin = 'c6_descri'
      Size = 150
    end
    object SC6c6_prunit: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_prunit'
      Origin = 'c6_prunit'
    end
    object SC6c6_bloquei: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_bloquei'
      Origin = 'c6_bloquei'
      Size = 10
    end
    object SC6c6_reserva: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_reserva'
      Origin = 'c6_reserva'
      Size = 10
    end
    object SC6r_e_c_n_o_: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'r_e_c_n_o_'
      Origin = 'r_e_c_n_o_'
    end
    object SC6r_e_c_d_e_l_: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'r_e_c_d_e_l_'
      Origin = 'r_e_c_d_e_l_'
    end
    object SC6d_e_l_e_t_: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'd_e_l_e_t_'
      Origin = 'd_e_l_e_t_'
      Size = 1
    end
    object SC6c6_referencia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_referencia'
      Origin = 'c6_referencia'
      Size = 50
    end
  end
  object SC5: TFDQuery
    BeforePost = SC5BeforePost
    Connection = FdCon
    FetchOptions.AssignedValues = [evRecordCountMode]
    FetchOptions.RecordCountMode = cmTotal
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amNonBlocking
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvCountUpdatedRecords, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.RefreshMode = rmAll
    UpdateOptions.CountUpdatedRecords = False
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    SQL.Strings = (
      'SELECT * FROM SC5010')
    Left = 136
    Top = 464
    object SC5c5_num: TStringField
      FieldName = 'c5_num'
      Origin = 'c5_num'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 10
    end
    object SC5c5_filial: TStringField
      FieldName = 'c5_filial'
      Origin = 'c5_filial'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 10
    end
    object SC5c5_zzrem: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_zzrem'
      Origin = 'c5_zzrem'
      Size = 9
    end
    object SC5c5_tipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_tipo'
      Origin = 'c5_tipo'
      Size = 10
    end
    object SC5c5_cliente: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 20
      FieldName = 'c5_cliente'
      Origin = 'c5_cliente'
    end
    object SC5c5_lojacli: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_lojacli'
      Origin = 'c5_lojacli'
      Size = 10
    end
    object SC5c5_client: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_client'
      Origin = 'c5_client'
      Size = 10
    end
    object SC5c5_lojaent: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_lojaent'
      Origin = 'c5_lojaent'
      Size = 10
    end
    object SC5c5_vend5: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_vend5'
      Origin = 'c5_vend5'
      Size = 10
    end
    object SC5c5_comis5: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_comis5'
      Origin = 'c5_comis5'
    end
    object SC5c5_desc1: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_desc1'
      Origin = 'c5_desc1'
    end
    object SC5c5_desc2: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_desc2'
      Origin = 'c5_desc2'
    end
    object SC5c5_desc3: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_desc3'
      Origin = 'c5_desc3'
    end
    object SC5c5_desc4: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_desc4'
      Origin = 'c5_desc4'
    end
    object SC5c5_banco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_banco'
      Origin = 'c5_banco'
      Size = 10
    end
    object SC5c5_descfi: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_descfi'
      Origin = 'c5_descfi'
    end
    object SC5c5_emissao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_emissao'
      Origin = 'c5_emissao'
      Size = 8
    end
    object SC5c5_cotacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_cotacao'
      Origin = 'c5_cotacao'
      Size = 10
    end
    object SC5c5_parc1: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_parc1'
      Origin = 'c5_parc1'
    end
    object SC5c5_data1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_data1'
      Origin = 'c5_data1'
      Size = 10
    end
    object SC5c5_parc2: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_parc2'
      Origin = 'c5_parc2'
    end
    object SC5c5_data2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_data2'
      Origin = 'c5_data2'
      Size = 10
    end
    object SC5c5_parc3: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_parc3'
      Origin = 'c5_parc3'
    end
    object SC5c5_data3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_data3'
      Origin = 'c5_data3'
      Size = 10
    end
    object SC5c5_parc4: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_parc4'
      Origin = 'c5_parc4'
    end
    object SC5c5_data4: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_data4'
      Origin = 'c5_data4'
      Size = 10
    end
    object SC5c5_tiplib: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_tiplib'
      Origin = 'c5_tiplib'
      Size = 10
    end
    object SC5c5_tpfrete: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_tpfrete'
      Origin = 'c5_tpfrete'
      Size = 10
    end
    object SC5c5_transp: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_transp'
      Origin = 'c5_transp'
      Size = 10
    end
    object SC5c5_tipocli: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_tipocli'
      Origin = 'c5_tipocli'
      Size = 10
    end
    object SC5c5_condpag: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_condpag'
      Origin = 'c5_condpag'
      Size = 10
    end
    object SC5c5_tabela: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_tabela'
      Origin = 'c5_tabela'
      Size = 10
    end
    object SC5c5_vend1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_vend1'
      Origin = 'c5_vend1'
      Size = 10
    end
    object SC5c5_comis1: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_comis1'
      Origin = 'c5_comis1'
    end
    object SC5c5_vend2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_vend2'
      Origin = 'c5_vend2'
      Size = 10
    end
    object SC5c5_comis2: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_comis2'
      Origin = 'c5_comis2'
    end
    object SC5c5_vend3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_vend3'
      Origin = 'c5_vend3'
      Size = 10
    end
    object SC5c5_comis3: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_comis3'
      Origin = 'c5_comis3'
    end
    object SC5c5_vend4: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_vend4'
      Origin = 'c5_vend4'
      Size = 10
    end
    object SC5c5_comis4: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_comis4'
      Origin = 'c5_comis4'
    end
    object SC5c5_frete: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_frete'
      Origin = 'c5_frete'
    end
    object SC5c5_seguro: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_seguro'
      Origin = 'c5_seguro'
    end
    object SC5c5_despesa: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_despesa'
      Origin = 'c5_despesa'
    end
    object SC5c5_fretaut: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_fretaut'
      Origin = 'c5_fretaut'
    end
    object SC5c5_reajust: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_reajust'
      Origin = 'c5_reajust'
      Size = 10
    end
    object SC5c5_moeda: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_moeda'
      Origin = 'c5_moeda'
    end
    object SC5c5_pesol: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_pesol'
      Origin = 'c5_pesol'
    end
    object SC5c5_pbruto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_pbruto'
      Origin = 'c5_pbruto'
    end
    object SC5c5_reimp: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_reimp'
      Origin = 'c5_reimp'
    end
    object SC5c5_redesp: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_redesp'
      Origin = 'c5_redesp'
      Size = 10
    end
    object SC5c5_volume1: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_volume1'
      Origin = 'c5_volume1'
      currency = True
    end
    object SC5c5_volume2: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_volume2'
      Origin = 'c5_volume2'
    end
    object SC5c5_volume3: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_volume3'
      Origin = 'c5_volume3'
    end
    object SC5c5_volume4: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_volume4'
      Origin = 'c5_volume4'
    end
    object SC5c5_especi1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_especi1'
      Origin = 'c5_especi1'
      Size = 10
    end
    object SC5c5_especi2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_especi2'
      Origin = 'c5_especi2'
      Size = 10
    end
    object SC5c5_especi3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_especi3'
      Origin = 'c5_especi3'
      Size = 10
    end
    object SC5c5_especi4: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_especi4'
      Origin = 'c5_especi4'
      Size = 10
    end
    object SC5c5_acrsfin: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_acrsfin'
      Origin = 'c5_acrsfin'
    end
    object SC5c5_mena: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_mena'
      Origin = 'c5_mena'
      Size = 500
    end
    object SC5c5_menpad: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_menpad'
      Origin = 'c5_menpad'
      Size = 10
    end
    object SC5c5_inciss: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_inciss'
      Origin = 'c5_inciss'
      Size = 10
    end
    object SC5c5_liberok: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_liberok'
      Origin = 'c5_liberok'
      Size = 10
    end
    object SC5c5_ok: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_ok'
      Origin = 'c5_ok'
      Size = 10
    end
    object SC5c5_a: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_a'
      Origin = 'c5_a'
      Size = 10
    end
    object SC5c5_serie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_serie'
      Origin = 'c5_serie'
      Size = 10
    end
    object SC5c5_kitrep: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_kitrep'
      Origin = 'c5_kitrep'
      Size = 10
    end
    object SC5c5_os: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_os'
      Origin = 'c5_os'
      Size = 10
    end
    object SC5c5_descont: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_descont'
      Origin = 'c5_descont'
    end
    object SC5c5_pedexp: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_pedexp'
      Origin = 'c5_pedexp'
    end
    object SC5c5_txmoeda: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_txmoeda'
      Origin = 'c5_txmoeda'
    end
    object SC5c5_tpcarga: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_tpcarga'
      Origin = 'c5_tpcarga'
      Size = 10
    end
    object SC5c5_pdescab: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_pdescab'
      Origin = 'c5_pdescab'
    end
    object SC5c5_blq: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_blq'
      Origin = 'c5_blq'
      Size = 10
    end
    object SC5c5_forniss: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_forniss'
      Origin = 'c5_forniss'
      Size = 10
    end
    object SC5c5_contra: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_contra'
      Origin = 'c5_contra'
      Size = 10
    end
    object SC5r_e_c_n_o_: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'r_e_c_n_o_'
      Origin = 'r_e_c_n_o_'
    end
    object SC5r_e_c_d_e_l_: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'r_e_c_d_e_l_'
      Origin = 'r_e_c_d_e_l_'
    end
    object SC5d_e_l_e_t_: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'd_e_l_e_t_'
      Origin = 'd_e_l_e_t_'
      Size = 1
    end
    object SC5c5_zznum: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_zznum'
      Origin = 'c5_zznum'
      Size = 10
    end
    object SC5c5_zznomec: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_zznomec'
      Origin = 'c5_zznomec'
      Size = 50
    end
    object SC5c5_zznomev: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_zznomev'
      Origin = 'c5_zznomev'
      Size = 50
    end
    object SC5c5_zzgrup1: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_zzgrup1'
      Origin = 'c5_zzgrup1'
    end
    object SC5c5_zzgrup2: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_zzgrup2'
      Origin = 'c5_zzgrup2'
    end
    object SC5c5_numorg: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_numorg'
      Origin = 'c5_numorg'
      Size = 10
    end
    object SC5c5_zztpcom: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_zztpcom'
      Origin = 'c5_zztpcom'
      Size = 1
    end
    object SC5c5_zzfatu: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_zzfatu'
      Origin = 'c5_zzfatu'
      Size = 1
    end
    object SC5c5_zzdepto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_zzdepto'
      Origin = 'c5_zzdepto'
      Size = 100
    end
    object SC5c5_zzcondpag: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_zzcondpag'
      Origin = 'c5_zzcondpag'
      Size = 10
    end
    object SC5c5_mennota: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'c5_mennota'
      Origin = 'c5_mennota'
      BlobType = ftMemo
    end
    object SC5c5_mo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_mo'
      Origin = 'c5_mo'
      currency = True
    end
    object SC5c5_placa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_placa'
      Origin = 'c5_placa'
      Size = 100
    end
    object SC5c5_saida: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_saida'
      Origin = 'c5_saida'
    end
    object SC5c5_prefixo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_prefixo'
      Origin = 'c5_prefixo'
      Size = 200
    end
    object SC5c5_sinistro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_sinistro'
      Origin = 'c5_sinistro'
      Size = 250
    end
  end
  object SB2: TFDQuery
    Connection = FdCon
    FetchOptions.AssignedValues = [evRecordCountMode]
    FetchOptions.RecordCountMode = cmTotal
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amNonBlocking
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvCountUpdatedRecords, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.RefreshMode = rmAll
    UpdateOptions.CountUpdatedRecords = False
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    SQL.Strings = (
      'SELECT * FROM SB2010')
    Left = 80
    Top = 464
    object SB2B2_VATU3: TFloatField
      FieldName = 'B2_VATU3'
      Origin = 'B2_VATU3'
    end
    object SB2B2_CM3: TFloatField
      FieldName = 'B2_CM3'
      Origin = 'B2_CM3'
    end
    object SB2B2_VFIM4: TFloatField
      FieldName = 'B2_VFIM4'
      Origin = 'B2_VFIM4'
    end
    object SB2B2_VATU4: TFloatField
      FieldName = 'B2_VATU4'
      Origin = 'B2_VATU4'
    end
    object SB2B2_CM4: TFloatField
      FieldName = 'B2_CM4'
      Origin = 'B2_CM4'
    end
    object SB2B2_VFIM5: TFloatField
      FieldName = 'B2_VFIM5'
      Origin = 'B2_VFIM5'
    end
    object SB2B2_VATU5: TFloatField
      FieldName = 'B2_VATU5'
      Origin = 'B2_VATU5'
    end
    object SB2B2_CM5: TFloatField
      FieldName = 'B2_CM5'
      Origin = 'B2_CM5'
    end
    object SB2B2_VFIM3: TFloatField
      FieldName = 'B2_VFIM3'
      Origin = 'B2_VFIM3'
    end
    object SB2B2_QEMP: TFloatField
      FieldName = 'B2_QEMP'
      Origin = 'B2_QEMP'
    end
    object SB2B2_QEMPN: TFloatField
      FieldName = 'B2_QEMPN'
      Origin = 'B2_QEMPN'
    end
    object SB2B2_QTSEGUM: TFloatField
      FieldName = 'B2_QTSEGUM'
      Origin = 'B2_QTSEGUM'
    end
    object SB2B2_USAI: TStringField
      FieldName = 'B2_USAI'
      Origin = 'B2_USAI'
      Size = 10
    end
    object SB2B2_RESERVA: TFloatField
      FieldName = 'B2_RESERVA'
      Origin = 'B2_RESERVA'
    end
    object SB2B2_QPEDVEN: TFloatField
      FieldName = 'B2_QPEDVEN'
      Origin = 'B2_QPEDVEN'
    end
    object SB2B2_LOCALIZ: TStringField
      FieldName = 'B2_LOCALIZ'
      Origin = 'B2_LOCALIZ'
      Size = 15
    end
    object SB2B2_NAOCLAS: TFloatField
      FieldName = 'B2_NAOCLAS'
      Origin = 'B2_NAOCLAS'
    end
    object SB2B2_SALPEDI: TFloatField
      FieldName = 'B2_SALPEDI'
      Origin = 'B2_SALPEDI'
    end
    object SB2B2_DINVENT: TStringField
      FieldName = 'B2_DINVENT'
      Origin = 'B2_DINVENT'
      Size = 10
    end
    object SB2B2_DINVFIM: TStringField
      FieldName = 'B2_DINVFIM'
      Origin = 'B2_DINVFIM'
      Size = 10
    end
    object SB2B2_QTNP: TFloatField
      FieldName = 'B2_QTNP'
      Origin = 'B2_QTNP'
    end
    object SB2B2_QNPT: TFloatField
      FieldName = 'B2_QNPT'
      Origin = 'B2_QNPT'
    end
    object SB2B2_QTER: TFloatField
      FieldName = 'B2_QTER'
      Origin = 'B2_QTER'
    end
    object SB2B2_QFIM2: TFloatField
      FieldName = 'B2_QFIM2'
      Origin = 'B2_QFIM2'
    end
    object SB2B2_QACLASS: TFloatField
      FieldName = 'B2_QACLASS'
      Origin = 'B2_QACLASS'
    end
    object SB2B2_DTINV: TStringField
      FieldName = 'B2_DTINV'
      Origin = 'B2_DTINV'
      Size = 10
    end
    object SB2B2_CMFF1: TFloatField
      FieldName = 'B2_CMFF1'
      Origin = 'B2_CMFF1'
    end
    object SB2B2_CMFF2: TFloatField
      FieldName = 'B2_CMFF2'
      Origin = 'B2_CMFF2'
    end
    object SB2B2_CMFF3: TFloatField
      FieldName = 'B2_CMFF3'
      Origin = 'B2_CMFF3'
    end
    object SB2B2_CMFF4: TFloatField
      FieldName = 'B2_CMFF4'
      Origin = 'B2_CMFF4'
    end
    object SB2B2_CMFF5: TFloatField
      FieldName = 'B2_CMFF5'
      Origin = 'B2_CMFF5'
    end
    object SB2B2_VFIMFF1: TFloatField
      FieldName = 'B2_VFIMFF1'
      Origin = 'B2_VFIMFF1'
    end
    object SB2B2_VFIMFF2: TFloatField
      FieldName = 'B2_VFIMFF2'
      Origin = 'B2_VFIMFF2'
    end
    object SB2B2_VFIMFF3: TFloatField
      FieldName = 'B2_VFIMFF3'
      Origin = 'B2_VFIMFF3'
    end
    object SB2B2_VFIMFF4: TFloatField
      FieldName = 'B2_VFIMFF4'
      Origin = 'B2_VFIMFF4'
    end
    object SB2B2_VFIMFF5: TFloatField
      FieldName = 'B2_VFIMFF5'
      Origin = 'B2_VFIMFF5'
    end
    object SB2B2_QEMPSA: TFloatField
      FieldName = 'B2_QEMPSA'
      Origin = 'B2_QEMPSA'
    end
    object SB2B2_QEMPPRE: TFloatField
      FieldName = 'B2_QEMPPRE'
      Origin = 'B2_QEMPPRE'
    end
    object SB2B2_SALPPRE: TFloatField
      FieldName = 'B2_SALPPRE'
      Origin = 'B2_SALPPRE'
    end
    object SB2B2_QEMP2: TFloatField
      FieldName = 'B2_QEMP2'
      Origin = 'B2_QEMP2'
    end
    object SB2B2_QEMPN2: TFloatField
      FieldName = 'B2_QEMPN2'
      Origin = 'B2_QEMPN2'
    end
    object SB2B2_RESERV2: TFloatField
      FieldName = 'B2_RESERV2'
      Origin = 'B2_RESERV2'
    end
    object SB2B2_QPEDVE2: TFloatField
      FieldName = 'B2_QPEDVE2'
      Origin = 'B2_QPEDVE2'
    end
    object SB2B2_QEPRE2: TFloatField
      FieldName = 'B2_QEPRE2'
      Origin = 'B2_QEPRE2'
    end
    object SB2B2_QFIMFF: TFloatField
      FieldName = 'B2_QFIMFF'
      Origin = 'B2_QFIMFF'
    end
    object SB2B2_SALPED2: TFloatField
      FieldName = 'B2_SALPED2'
      Origin = 'B2_SALPED2'
    end
    object SB2B2_QEMPPRJ: TFloatField
      FieldName = 'B2_QEMPPRJ'
      Origin = 'B2_QEMPPRJ'
    end
    object SB2B2_CODGRP: TStringField
      FieldName = 'B2_CODGRP'
      Origin = 'B2_CODGRP'
      Size = 10
    end
    object SB2B2_CODITE: TStringField
      FieldName = 'B2_CODITE'
      Origin = 'B2_CODITE'
      Size = 27
    end
    object SB2B2_QEMPPR2: TFloatField
      FieldName = 'B2_QEMPPR2'
      Origin = 'B2_QEMPPR2'
    end
    object SB2B2_STATUS: TStringField
      FieldName = 'B2_STATUS'
      Origin = 'B2_STATUS'
      Size = 10
    end
    object SB2B2_FILIAL: TStringField
      FieldName = 'B2_FILIAL'
      Origin = 'B2_FILIAL'
      Size = 10
    end
    object SB2B2_COD: TStringField
      FieldName = 'B2_COD'
      Origin = 'B2_COD'
    end
    object SB2B2_QFIM: TFloatField
      FieldName = 'B2_QFIM'
      Origin = 'B2_QFIM'
    end
    object SB2B2_LOCAL: TStringField
      FieldName = 'B2_LOCAL'
      Origin = 'B2_LOCAL'
      Size = 10
    end
    object SB2B2_DPROD: TStringField
      FieldName = 'B2_DPROD'
      Origin = 'B2_DPROD'
      Size = 30
    end
    object SB2B2_QATU: TFloatField
      FieldName = 'B2_QATU'
      Origin = 'B2_QATU'
    end
    object SB2B2_VFIM1: TFloatField
      FieldName = 'B2_VFIM1'
      Origin = 'B2_VFIM1'
    end
    object SB2B2_VATU1: TFloatField
      FieldName = 'B2_VATU1'
      Origin = 'B2_VATU1'
    end
    object SB2B2_CM1: TFloatField
      FieldName = 'B2_CM1'
      Origin = 'B2_CM1'
    end
    object SB2B2_VFIM2: TFloatField
      FieldName = 'B2_VFIM2'
      Origin = 'B2_VFIM2'
    end
    object SB2B2_VATU2: TFloatField
      FieldName = 'B2_VATU2'
      Origin = 'B2_VATU2'
    end
    object SB2B2_CM2: TFloatField
      FieldName = 'B2_CM2'
      Origin = 'B2_CM2'
    end
    object SB2R_E_C_N_O_: TIntegerField
      FieldName = 'R_E_C_N_O_'
      Origin = 'R_E_C_N_O_'
    end
    object SB2R_E_C_D_E_L_: TIntegerField
      FieldName = 'R_E_C_D_E_L_'
      Origin = 'R_E_C_D_E_L_'
    end
    object SB2D_E_L_E_T_: TStringField
      FieldName = 'D_E_L_E_T_'
      Origin = 'D_E_L_E_T_'
      Size = 1
    end
  end
  object DA1: TFDQuery
    Connection = FdCon
    FetchOptions.AssignedValues = [evRecordCountMode]
    FetchOptions.RecordCountMode = cmTotal
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amNonBlocking
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvCountUpdatedRecords, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.RefreshMode = rmAll
    UpdateOptions.CountUpdatedRecords = False
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    SQL.Strings = (
      'Select * from DA1010')
    Left = 136
    Top = 408
    object DA1da1_filial: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'da1_filial'
      Origin = 'da1_filial'
      Size = 10
    end
    object DA1da1_vlrdes: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'da1_vlrdes'
      Origin = 'da1_vlrdes'
    end
    object DA1da1_perdes: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'da1_perdes'
      Origin = 'da1_perdes'
    end
    object DA1da1_ativo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'da1_ativo'
      Origin = 'da1_ativo'
      Size = 10
    end
    object DA1da1_frete: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'da1_frete'
      Origin = 'da1_frete'
    end
    object DA1da1_estado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'da1_estado'
      Origin = 'da1_estado'
      Size = 10
    end
    object DA1da1_tpoper: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'da1_tpoper'
      Origin = 'da1_tpoper'
      Size = 10
    end
    object DA1da1_qtdlot: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'da1_qtdlot'
      Origin = 'da1_qtdlot'
    end
    object DA1da1_indlot: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'da1_indlot'
      Origin = 'da1_indlot'
    end
    object DA1da1_moeda: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'da1_moeda'
      Origin = 'da1_moeda'
    end
    object DA1da1_datvig: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'da1_datvig'
      Origin = 'da1_datvig'
      Size = 10
    end
    object DA1da1_item: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'da1_item'
      Origin = 'da1_item'
      Size = 10
    end
    object DA1da1_codtab: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'da1_codtab'
      Origin = 'da1_codtab'
      Size = 10
    end
    object DA1da1_destab: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'da1_destab'
      Origin = 'da1_destab'
      Size = 30
    end
    object DA1da1_codpro: TStringField
      FieldName = 'da1_codpro'
      Origin = 'da1_codpro'
      Required = True
    end
    object DA1da1_descri: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'da1_descri'
      Origin = 'da1_descri'
      Size = 300
    end
    object DA1da1_prcbas: TFloatField
      FieldName = 'da1_prcbas'
      Origin = 'da1_prcbas'
      Required = True
      currency = True
    end
    object DA1da1_prcven: TFloatField
      FieldName = 'da1_prcven'
      Origin = 'da1_prcven'
      Required = True
      currency = True
    end
    object DA1r_e_c_n_o_: TFDAutoIncField
      FieldName = 'r_e_c_n_o_'
      Origin = 'r_e_c_n_o_'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object DA1r_e_c_d_e_l_: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'r_e_c_d_e_l_'
      Origin = 'r_e_c_d_e_l_'
    end
    object DA1d_e_l_e_t_: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'd_e_l_e_t_'
      Origin = 'd_e_l_e_t_'
      Size = 2
    end
    object DA1da1_oldc: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'da1_oldc'
      Origin = 'da1_oldc'
      Size = 50
    end
    object DA1da1_custo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'da1_custo'
      Origin = 'da1_custo'
    end
    object DA1da1_avista: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'da1_avista'
      Origin = 'da1_avista'
    end
  end
  object SB1: TFDQuery
    Connection = FdCon
    FetchOptions.AssignedValues = [evRecordCountMode]
    FetchOptions.RecordCountMode = cmTotal
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amNonBlocking
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvCountUpdatedRecords, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.RefreshMode = rmAll
    UpdateOptions.CountUpdatedRecords = False
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    SQL.Strings = (
      'Select * from SB1010')
    Left = 80
    Top = 408
    object SB1B1_FILIAL: TStringField
      FieldName = 'B1_FILIAL'
      Origin = 'B1_FILIAL'
      Size = 10
    end
    object SB1B1_TIPO: TStringField
      FieldName = 'B1_TIPO'
      Origin = 'B1_TIPO'
      Size = 10
    end
    object SB1B1_ZZOF: TStringField
      FieldName = 'B1_ZZOF'
      Origin = 'B1_ZZOF'
      Size = 10
    end
    object SB1B1_CODITE: TStringField
      FieldName = 'B1_CODITE'
      Origin = 'B1_CODITE'
      Size = 27
    end
    object SB1B1_ZZNUMS: TStringField
      FieldName = 'B1_ZZNUMS'
      Origin = 'B1_ZZNUMS'
      Size = 5
    end
    object SB1B1_ZZTIPPA: TStringField
      FieldName = 'B1_ZZTIPPA'
      Origin = 'B1_ZZTIPPA'
      Size = 3
    end
    object SB1B1_ZZGRPCD: TStringField
      FieldName = 'B1_ZZGRPCD'
      Origin = 'B1_ZZGRPCD'
      Size = 6
    end
    object SB1B1_COD: TStringField
      FieldName = 'B1_COD'
      Origin = 'B1_COD'
    end
    object SB1B1_DESC: TStringField
      FieldName = 'B1_DESC'
      Origin = 'B1_DESC'
      Size = 150
    end
    object SB1B1_ZZMODEL: TStringField
      FieldName = 'B1_ZZMODEL'
      Origin = 'B1_ZZMODEL'
    end
    object SB1B1_POSIPI: TStringField
      FieldName = 'B1_POSIPI'
      Origin = 'B1_POSIPI'
      Size = 10
    end
    object SB1B1_ESPECIE: TFloatField
      FieldName = 'B1_ESPECIE'
      Origin = 'B1_ESPECIE'
    end
    object SB1B1_EX_NCM: TStringField
      FieldName = 'B1_EX_NCM'
      Origin = 'B1_EX_NCM'
      Size = 10
    end
    object SB1B1_EX_NBM: TStringField
      FieldName = 'B1_EX_NBM'
      Origin = 'B1_EX_NBM'
      Size = 10
    end
    object SB1B1_UM: TStringField
      FieldName = 'B1_UM'
      Origin = 'B1_UM'
      Size = 10
    end
    object SB1B1_LOCPAD: TStringField
      FieldName = 'B1_LOCPAD'
      Origin = 'B1_LOCPAD'
      Size = 10
    end
    object SB1B1_GRUPO: TStringField
      FieldName = 'B1_GRUPO'
      Origin = 'B1_GRUPO'
      Size = 10
    end
    object SB1B1_ORIGEM: TStringField
      FieldName = 'B1_ORIGEM'
      Origin = 'B1_ORIGEM'
      Size = 10
    end
    object SB1B1_PICM: TFloatField
      FieldName = 'B1_PICM'
      Origin = 'B1_PICM'
    end
    object SB1B1_IPI: TFloatField
      FieldName = 'B1_IPI'
      Origin = 'B1_IPI'
    end
    object SB1B1_ALIQISS: TFloatField
      FieldName = 'B1_ALIQISS'
      Origin = 'B1_ALIQISS'
    end
    object SB1B1_MSBLQL: TStringField
      FieldName = 'B1_MSBLQL'
      Origin = 'B1_MSBLQL'
      Size = 10
    end
    object SB1B1_BITMAP: TStringField
      FieldName = 'B1_BITMAP'
      Origin = 'B1_BITMAP'
      Size = 10
    end
    object SB1B1_SEGUM: TStringField
      FieldName = 'B1_SEGUM'
      Origin = 'B1_SEGUM'
      Size = 10
    end
    object SB1B1_CODISS: TStringField
      FieldName = 'B1_CODISS'
      Origin = 'B1_CODISS'
      Size = 10
    end
    object SB1B1_TE: TStringField
      FieldName = 'B1_TE'
      Origin = 'B1_TE'
      Size = 10
    end
    object SB1B1_TS: TStringField
      FieldName = 'B1_TS'
      Origin = 'B1_TS'
      Size = 10
    end
    object SB1B1_PICMRET: TFloatField
      FieldName = 'B1_PICMRET'
      Origin = 'B1_PICMRET'
    end
    object SB1B1_PICMENT: TFloatField
      FieldName = 'B1_PICMENT'
      Origin = 'B1_PICMENT'
    end
    object SB1B1_IMPZFRC: TStringField
      FieldName = 'B1_IMPZFRC'
      Origin = 'B1_IMPZFRC'
      Size = 10
    end
    object SB1B1_CONV: TFloatField
      FieldName = 'B1_CONV'
      Origin = 'B1_CONV'
    end
    object SB1B1_TIPCONV: TStringField
      FieldName = 'B1_TIPCONV'
      Origin = 'B1_TIPCONV'
      Size = 10
    end
    object SB1B1_ALTER: TStringField
      FieldName = 'B1_ALTER'
      Origin = 'B1_ALTER'
      Size = 15
    end
    object SB1B1_QE: TFloatField
      FieldName = 'B1_QE'
      Origin = 'B1_QE'
    end
    object SB1B1_UCOM: TStringField
      FieldName = 'B1_UCOM'
      Origin = 'B1_UCOM'
      Size = 8
    end
    object SB1B1_PRV1: TFloatField
      FieldName = 'B1_PRV1'
      Origin = 'B1_PRV1'
    end
    object SB1B1_EMIN: TFloatField
      FieldName = 'B1_EMIN'
      Origin = 'B1_EMIN'
    end
    object SB1B1_ESTFOR: TStringField
      FieldName = 'B1_ESTFOR'
      Origin = 'B1_ESTFOR'
      Size = 10
    end
    object SB1B1_CUSTD: TFloatField
      FieldName = 'B1_CUSTD'
      Origin = 'B1_CUSTD'
    end
    object SB1B1_UCALSTD: TStringField
      FieldName = 'B1_UCALSTD'
      Origin = 'B1_UCALSTD'
      Size = 8
    end
    object SB1B1_UPRC: TFloatField
      FieldName = 'B1_UPRC'
      Origin = 'B1_UPRC'
    end
    object SB1B1_MCUSTD: TStringField
      FieldName = 'B1_MCUSTD'
      Origin = 'B1_MCUSTD'
      Size = 10
    end
    object SB1B1_PESO: TFloatField
      FieldName = 'B1_PESO'
      Origin = 'B1_PESO'
    end
    object SB1B1_ESTSEG: TFloatField
      FieldName = 'B1_ESTSEG'
      Origin = 'B1_ESTSEG'
    end
    object SB1B1_FORPRZ: TStringField
      FieldName = 'B1_FORPRZ'
      Origin = 'B1_FORPRZ'
      Size = 10
    end
    object SB1B1_PE: TFloatField
      FieldName = 'B1_PE'
      Origin = 'B1_PE'
    end
    object SB1B1_TIPE: TStringField
      FieldName = 'B1_TIPE'
      Origin = 'B1_TIPE'
      Size = 10
    end
    object SB1B1_LE: TFloatField
      FieldName = 'B1_LE'
      Origin = 'B1_LE'
    end
    object SB1B1_LM: TFloatField
      FieldName = 'B1_LM'
      Origin = 'B1_LM'
    end
    object SB1B1_CONTA: TStringField
      FieldName = 'B1_CONTA'
      Origin = 'B1_CONTA'
    end
    object SB1B1_LOJPROC: TStringField
      FieldName = 'B1_LOJPROC'
      Origin = 'B1_LOJPROC'
      Size = 10
    end
    object SB1B1_ZZCTAD: TStringField
      FieldName = 'B1_ZZCTAD'
      Origin = 'B1_ZZCTAD'
    end
    object SB1B1_ZZCTAC: TStringField
      FieldName = 'B1_ZZCTAC'
      Origin = 'B1_ZZCTAC'
    end
    object SB1B1_TOLER: TFloatField
      FieldName = 'B1_TOLER'
      Origin = 'B1_TOLER'
    end
    object SB1B1_CC: TStringField
      FieldName = 'B1_CC'
      Origin = 'B1_CC'
      Size = 10
    end
    object SB1B1_ITEMCC: TStringField
      FieldName = 'B1_ITEMCC'
      Origin = 'B1_ITEMCC'
      Size = 10
    end
    object SB1B1_FAMILIA: TStringField
      FieldName = 'B1_FAMILIA'
      Origin = 'B1_FAMILIA'
      Size = 10
    end
    object SB1B1_UREV: TStringField
      FieldName = 'B1_UREV'
      Origin = 'B1_UREV'
      Size = 8
    end
    object SB1B1_DATREF: TStringField
      FieldName = 'B1_DATREF'
      Origin = 'B1_DATREF'
      Size = 8
    end
    object SB1B1_PROC: TStringField
      FieldName = 'B1_PROC'
      Origin = 'B1_PROC'
      Size = 10
    end
    object SB1B1_QB: TFloatField
      FieldName = 'B1_QB'
      Origin = 'B1_QB'
    end
    object SB1B1_APROPRI: TStringField
      FieldName = 'B1_APROPRI'
      Origin = 'B1_APROPRI'
      Size = 10
    end
    object SB1B1_TIPODEC: TStringField
      FieldName = 'B1_TIPODEC'
      Origin = 'B1_TIPODEC'
      Size = 10
    end
    object SB1B1_DTREFP1: TStringField
      FieldName = 'B1_DTREFP1'
      Origin = 'B1_DTREFP1'
      Size = 8
    end
    object SB1B1_CLASFIS: TStringField
      FieldName = 'B1_CLASFIS'
      Origin = 'B1_CLASFIS'
      Size = 10
    end
    object SB1B1_FANTASM: TStringField
      FieldName = 'B1_FANTASM'
      Origin = 'B1_FANTASM'
      Size = 10
    end
    object SB1B1_RASTRO: TStringField
      FieldName = 'B1_RASTRO'
      Origin = 'B1_RASTRO'
      Size = 10
    end
    object SB1B1_FORAEST: TStringField
      FieldName = 'B1_FORAEST'
      Origin = 'B1_FORAEST'
      Size = 10
    end
    object SB1B1_COMIS: TFloatField
      FieldName = 'B1_COMIS'
      Origin = 'B1_COMIS'
    end
    object SB1B1_CONINI: TStringField
      FieldName = 'B1_CONINI'
      Origin = 'B1_CONINI'
      Size = 8
    end
    object SB1B1_CONTSOC: TStringField
      FieldName = 'B1_CONTSOC'
      Origin = 'B1_CONTSOC'
      Size = 10
    end
    object SB1B1_MONO: TStringField
      FieldName = 'B1_MONO'
      Origin = 'B1_MONO'
      Size = 10
    end
    object SB1B1_CODBAR: TStringField
      FieldName = 'B1_CODBAR'
      Origin = 'B1_CODBAR'
      Size = 15
    end
    object SB1B1_GRADE: TStringField
      FieldName = 'B1_GRADE'
      Origin = 'B1_GRADE'
      Size = 10
    end
    object SB1B1_FORMLOT: TStringField
      FieldName = 'B1_FORMLOT'
      Origin = 'B1_FORMLOT'
      Size = 10
    end
    object SB1B1_PERINV: TFloatField
      FieldName = 'B1_PERINV'
      Origin = 'B1_PERINV'
    end
    object SB1B1_FPCOD: TStringField
      FieldName = 'B1_FPCOD'
      Origin = 'B1_FPCOD'
      Size = 10
    end
    object SB1B1_GRTRIB: TStringField
      FieldName = 'B1_GRTRIB'
      Origin = 'B1_GRTRIB'
      Size = 10
    end
    object SB1B1_CONTRAT: TStringField
      FieldName = 'B1_CONTRAT'
      Origin = 'B1_CONTRAT'
      Size = 10
    end
    object SB1B1_DESC_P: TStringField
      FieldName = 'B1_DESC_P'
      Origin = 'B1_DESC_P'
      Size = 10
    end
    object SB1B1_DESC_GI: TStringField
      FieldName = 'B1_DESC_GI'
      Origin = 'B1_DESC_GI'
      Size = 10
    end
    object SB1B1_DESC_I: TStringField
      FieldName = 'B1_DESC_I'
      Origin = 'B1_DESC_I'
      Size = 10
    end
    object SB1B1_MRP: TStringField
      FieldName = 'B1_MRP'
      Origin = 'B1_MRP'
      Size = 10
    end
    object SB1B1_PRVALID: TFloatField
      FieldName = 'B1_PRVALID'
      Origin = 'B1_PRVALID'
    end
    object SB1B1_ANUENTE: TStringField
      FieldName = 'B1_ANUENTE'
      Origin = 'B1_ANUENTE'
      Size = 10
    end
    object SB1B1_OPC: TStringField
      FieldName = 'B1_OPC'
      Origin = 'B1_OPC'
      Size = 80
    end
    object SB1B1_CODOBS: TStringField
      FieldName = 'B1_CODOBS'
      Origin = 'B1_CODOBS'
      Size = 10
    end
    object SB1B1_NOTAMIN: TFloatField
      FieldName = 'B1_NOTAMIN'
      Origin = 'B1_NOTAMIN'
    end
    object SB1B1_NUMCOP: TFloatField
      FieldName = 'B1_NUMCOP'
      Origin = 'B1_NUMCOP'
    end
    object SB1B1_FABRIC: TStringField
      FieldName = 'B1_FABRIC'
      Origin = 'B1_FABRIC'
    end
    object SB1B1_IRRF: TStringField
      FieldName = 'B1_IRRF'
      Origin = 'B1_IRRF'
      Size = 10
    end
    object SB1B1_LOCALIZ: TStringField
      FieldName = 'B1_LOCALIZ'
      Origin = 'B1_LOCALIZ'
      Size = 10
    end
    object SB1B1_OPERPAD: TStringField
      FieldName = 'B1_OPERPAD'
      Origin = 'B1_OPERPAD'
      Size = 10
    end
    object SB1B1_VLREFUS: TFloatField
      FieldName = 'B1_VLREFUS'
      Origin = 'B1_VLREFUS'
    end
    object SB1B1_PRODPAI: TStringField
      FieldName = 'B1_PRODPAI'
      Origin = 'B1_PRODPAI'
      Size = 15
    end
    object SB1B1_IMPORT: TStringField
      FieldName = 'B1_IMPORT'
      Origin = 'B1_IMPORT'
      Size = 10
    end
    object SB1B1_SITPROD: TStringField
      FieldName = 'B1_SITPROD'
      Origin = 'B1_SITPROD'
      Size = 10
    end
    object SB1B1_MODELO: TStringField
      FieldName = 'B1_MODELO'
      Origin = 'B1_MODELO'
      Size = 15
    end
    object SB1B1_SETOR: TStringField
      FieldName = 'B1_SETOR'
      Origin = 'B1_SETOR'
      Size = 10
    end
    object SB1B1_BALANCA: TStringField
      FieldName = 'B1_BALANCA'
      Origin = 'B1_BALANCA'
      Size = 10
    end
    object SB1B1_TECLA: TStringField
      FieldName = 'B1_TECLA'
      Origin = 'B1_TECLA'
      Size = 10
    end
    object SB1B1_TIPOCQ: TStringField
      FieldName = 'B1_TIPOCQ'
      Origin = 'B1_TIPOCQ'
      Size = 10
    end
    object SB1B1_SOLICIT: TStringField
      FieldName = 'B1_SOLICIT'
      Origin = 'B1_SOLICIT'
      Size = 10
    end
    object SB1B1_AGREGCU: TStringField
      FieldName = 'B1_AGREGCU'
      Origin = 'B1_AGREGCU'
      Size = 10
    end
    object SB1B1_QUADPRO: TStringField
      FieldName = 'B1_QUADPRO'
      Origin = 'B1_QUADPRO'
      Size = 10
    end
    object SB1B1_GRUPCOM: TStringField
      FieldName = 'B1_GRUPCOM'
      Origin = 'B1_GRUPCOM'
      Size = 10
    end
    object SB1B1_NALNCCA: TStringField
      FieldName = 'B1_NALNCCA'
      Origin = 'B1_NALNCCA'
      Size = 10
    end
    object SB1B1_NUMCQPR: TFloatField
      FieldName = 'B1_NUMCQPR'
      Origin = 'B1_NUMCQPR'
    end
    object SB1B1_CONTCQP: TFloatField
      FieldName = 'B1_CONTCQP'
      Origin = 'B1_CONTCQP'
    end
    object SB1B1_REVATU: TStringField
      FieldName = 'B1_REVATU'
      Origin = 'B1_REVATU'
      Size = 10
    end
    object SB1B1_NALSH: TStringField
      FieldName = 'B1_NALSH'
      Origin = 'B1_NALSH'
      Size = 10
    end
    object SB1B1_CODEMB: TStringField
      FieldName = 'B1_CODEMB'
      Origin = 'B1_CODEMB'
    end
    object SB1B1_INSS: TStringField
      FieldName = 'B1_INSS'
      Origin = 'B1_INSS'
      Size = 10
    end
    object SB1B1_ESPECIF: TStringField
      FieldName = 'B1_ESPECIF'
      Origin = 'B1_ESPECIF'
      Size = 80
    end
    object SB1B1_MAT_PRI: TStringField
      FieldName = 'B1_MAT_PRI'
      Origin = 'B1_MAT_PRI'
    end
    object SB1B1_DATASUB: TStringField
      FieldName = 'B1_DATASUB'
      Origin = 'B1_DATASUB'
      Size = 8
    end
    object SB1B1_REDINSS: TFloatField
      FieldName = 'B1_REDINSS'
      Origin = 'B1_REDINSS'
    end
    object SB1B1_REDIRRF: TFloatField
      FieldName = 'B1_REDIRRF'
      Origin = 'B1_REDIRRF'
    end
    object SB1B1_ALADI: TStringField
      FieldName = 'B1_ALADI'
      Origin = 'B1_ALADI'
      Size = 10
    end
    object SB1B1_TAB_IPI: TStringField
      FieldName = 'B1_TAB_IPI'
      Origin = 'B1_TAB_IPI'
      Size = 10
    end
    object SB1B1_GRUDES: TStringField
      FieldName = 'B1_GRUDES'
      Origin = 'B1_GRUDES'
      Size = 10
    end
    object SB1B1_REDPIS: TFloatField
      FieldName = 'B1_REDPIS'
      Origin = 'B1_REDPIS'
    end
    object SB1B1_REDCOF: TFloatField
      FieldName = 'B1_REDCOF'
      Origin = 'B1_REDCOF'
    end
    object SB1B1_PCSLL: TFloatField
      FieldName = 'B1_PCSLL'
      Origin = 'B1_PCSLL'
    end
    object SB1B1_PCOFINS: TFloatField
      FieldName = 'B1_PCOFINS'
      Origin = 'B1_PCOFINS'
    end
    object SB1B1_PPIS: TFloatField
      FieldName = 'B1_PPIS'
      Origin = 'B1_PPIS'
    end
    object SB1B1_MTBF: TFloatField
      FieldName = 'B1_MTBF'
      Origin = 'B1_MTBF'
    end
    object SB1B1_QTDSER: TFloatField
      FieldName = 'B1_QTDSER'
      Origin = 'B1_QTDSER'
    end
    object SB1B1_MTTR: TFloatField
      FieldName = 'B1_MTTR'
      Origin = 'B1_MTTR'
    end
    object SB1B1_FLAGSUG: TStringField
      FieldName = 'B1_FLAGSUG'
      Origin = 'B1_FLAGSUG'
      Size = 10
    end
    object SB1B1_CLASSVE: TStringField
      FieldName = 'B1_CLASSVE'
      Origin = 'B1_CLASSVE'
      Size = 10
    end
    object SB1B1_MIDIA: TStringField
      FieldName = 'B1_MIDIA'
      Origin = 'B1_MIDIA'
      Size = 10
    end
    object SB1B1_QTMIDIA: TFloatField
      FieldName = 'B1_QTMIDIA'
      Origin = 'B1_QTMIDIA'
    end
    object SB1B1_VLR_IPI: TFloatField
      FieldName = 'B1_VLR_IPI'
      Origin = 'B1_VLR_IPI'
    end
    object SB1B1_ENVOBR: TStringField
      FieldName = 'B1_ENVOBR'
      Origin = 'B1_ENVOBR'
      Size = 10
    end
    object SB1B1_SERIE: TStringField
      FieldName = 'B1_SERIE'
      Origin = 'B1_SERIE'
    end
    object SB1B1_FAIXAS: TFloatField
      FieldName = 'B1_FAIXAS'
      Origin = 'B1_FAIXAS'
    end
    object SB1B1_NROPAG: TFloatField
      FieldName = 'B1_NROPAG'
      Origin = 'B1_NROPAG'
    end
    object SB1B1_ISBN: TStringField
      FieldName = 'B1_ISBN'
      Origin = 'B1_ISBN'
      Size = 10
    end
    object SB1B1_TITORIG: TStringField
      FieldName = 'B1_TITORIG'
      Origin = 'B1_TITORIG'
      Size = 50
    end
    object SB1B1_LINGUA: TStringField
      FieldName = 'B1_LINGUA'
      Origin = 'B1_LINGUA'
    end
    object SB1B1_EDICAO: TStringField
      FieldName = 'B1_EDICAO'
      Origin = 'B1_EDICAO'
      Size = 10
    end
    object SB1B1_OBSISBN: TStringField
      FieldName = 'B1_OBSISBN'
      Origin = 'B1_OBSISBN'
      Size = 40
    end
    object SB1B1_CLVL: TStringField
      FieldName = 'B1_CLVL'
      Origin = 'B1_CLVL'
      Size = 10
    end
    object SB1B1_ATIVO: TStringField
      FieldName = 'B1_ATIVO'
      Origin = 'B1_ATIVO'
      Size = 10
    end
    object SB1B1_EMAX: TFloatField
      FieldName = 'B1_EMAX'
      Origin = 'B1_EMAX'
    end
    object SB1B1_CORPRI: TStringField
      FieldName = 'B1_CORPRI'
      Origin = 'B1_CORPRI'
      Size = 10
    end
    object SB1B1_CORSEC: TStringField
      FieldName = 'B1_CORSEC'
      Origin = 'B1_CORSEC'
      Size = 10
    end
    object SB1B1_NICONE: TStringField
      FieldName = 'B1_NICONE'
      Origin = 'B1_NICONE'
      Size = 15
    end
    object SB1B1_ATRIB1: TStringField
      FieldName = 'B1_ATRIB1'
      Origin = 'B1_ATRIB1'
      Size = 10
    end
    object SB1B1_ATRIB2: TStringField
      FieldName = 'B1_ATRIB2'
      Origin = 'B1_ATRIB2'
      Size = 10
    end
    object SB1B1_ATRIB3: TStringField
      FieldName = 'B1_ATRIB3'
      Origin = 'B1_ATRIB3'
      Size = 10
    end
    object SB1B1_REGSEQ: TStringField
      FieldName = 'B1_REGSEQ'
      Origin = 'B1_REGSEQ'
      Size = 10
    end
    object SB1B1_PESBRU: TFloatField
      FieldName = 'B1_PESBRU'
      Origin = 'B1_PESBRU'
    end
    object SB1B1_TIPCAR: TStringField
      FieldName = 'B1_TIPCAR'
      Origin = 'B1_TIPCAR'
      Size = 10
    end
    object SB1B1_FRACPER: TFloatField
      FieldName = 'B1_FRACPER'
      Origin = 'B1_FRACPER'
    end
    object SB1B1_INT_ICM: TFloatField
      FieldName = 'B1_INT_ICM'
      Origin = 'B1_INT_ICM'
    end
    object SB1B1_REQUIS: TStringField
      FieldName = 'B1_REQUIS'
      Origin = 'B1_REQUIS'
      Size = 10
    end
    object SB1B1_SELO: TStringField
      FieldName = 'B1_SELO'
      Origin = 'B1_SELO'
      Size = 10
    end
    object SB1B1_LOTVEN: TFloatField
      FieldName = 'B1_LOTVEN'
      Origin = 'B1_LOTVEN'
    end
    object SB1B1_OK: TStringField
      FieldName = 'B1_OK'
      Origin = 'B1_OK'
      Size = 10
    end
    object SB1B1_USAFEFO: TStringField
      FieldName = 'B1_USAFEFO'
      Origin = 'B1_USAFEFO'
      Size = 10
    end
    object SB1B1_VLR_ICM: TFloatField
      FieldName = 'B1_VLR_ICM'
      Origin = 'B1_VLR_ICM'
    end
    object SB1B1_VLRSELO: TFloatField
      FieldName = 'B1_VLRSELO'
      Origin = 'B1_VLRSELO'
    end
    object SB1B1_CODNOR: TStringField
      FieldName = 'B1_CODNOR'
      Origin = 'B1_CODNOR'
      Size = 10
    end
    object SB1B1_CPOTENC: TStringField
      FieldName = 'B1_CPOTENC'
      Origin = 'B1_CPOTENC'
      Size = 10
    end
    object SB1B1_POTENCI: TFloatField
      FieldName = 'B1_POTENCI'
      Origin = 'B1_POTENCI'
    end
    object SB1B1_CLASSE: TStringField
      FieldName = 'B1_CLASSE'
      Origin = 'B1_CLASSE'
      Size = 10
    end
    object SB1B1_QTDACUM: TFloatField
      FieldName = 'B1_QTDACUM'
      Origin = 'B1_QTDACUM'
    end
    object SB1B1_QTDINIC: TFloatField
      FieldName = 'B1_QTDINIC'
      Origin = 'B1_QTDINIC'
    end
    object SB1B1_UMOEC: TFloatField
      FieldName = 'B1_UMOEC'
      Origin = 'B1_UMOEC'
    end
    object SB1B1_UVLRC: TFloatField
      FieldName = 'B1_UVLRC'
      Origin = 'B1_UVLRC'
    end
    object SB1B1_RETOPER: TStringField
      FieldName = 'B1_RETOPER'
      Origin = 'B1_RETOPER'
      Size = 10
    end
    object SB1B1_CNAE: TStringField
      FieldName = 'B1_CNAE'
      Origin = 'B1_CNAE'
      Size = 10
    end
    object SB1B1_FRETISS: TStringField
      FieldName = 'B1_FRETISS'
      Origin = 'B1_FRETISS'
      Size = 1
    end
    object SB1B1_CRDEST: TFloatField
      FieldName = 'B1_CRDEST'
      Origin = 'B1_CRDEST'
    end
    object SB1B1_GCCUSTO: TStringField
      FieldName = 'B1_GCCUSTO'
      Origin = 'B1_GCCUSTO'
      Size = 9
    end
    object SB1B1_PIS: TStringField
      FieldName = 'B1_PIS'
      Origin = 'B1_PIS'
      Size = 10
    end
    object SB1B1_CCCUSTO: TStringField
      FieldName = 'B1_CCCUSTO'
      Origin = 'B1_CCCUSTO'
      Size = 9
    end
    object SB1B1_COFINS: TStringField
      FieldName = 'B1_COFINS'
      Origin = 'B1_COFINS'
      Size = 10
    end
    object SB1B1_CSLL: TStringField
      FieldName = 'B1_CSLL'
      Origin = 'B1_CSLL'
      Size = 10
    end
    object SB1B1_CALCFET: TStringField
      FieldName = 'B1_CALCFET'
      Origin = 'B1_CALCFET'
      Size = 1
    end
    object SB1B1_PAUTFET: TFloatField
      FieldName = 'B1_PAUTFET'
      Origin = 'B1_PAUTFET'
    end
    object SB1B1_ZZREVIS: TStringField
      FieldName = 'B1_ZZREVIS'
      Origin = 'B1_ZZREVIS'
      Size = 3
    end
    object SB1B1_ZZMTREV: TWideMemoField
      FieldName = 'B1_ZZMTREV'
      Origin = 'B1_ZZMTREV'
      BlobType = ftWideMemo
    end
    object SB1B1_ZZPOTEN: TFloatField
      FieldName = 'B1_ZZPOTEN'
      Origin = 'B1_ZZPOTEN'
    end
    object SB1B1_ZZTENSA: TStringField
      FieldName = 'B1_ZZTENSA'
      Origin = 'B1_ZZTENSA'
      Size = 15
    end
    object SB1B1_ZZFREQU: TFloatField
      FieldName = 'B1_ZZFREQU'
      Origin = 'B1_ZZFREQU'
    end
    object SB1B1_ZZNPOLO: TFloatField
      FieldName = 'B1_ZZNPOLO'
      Origin = 'B1_ZZNPOLO'
    end
    object SB1B1_ZZGPROT: TStringField
      FieldName = 'B1_ZZGPROT'
      Origin = 'B1_ZZGPROT'
      Size = 6
    end
    object SB1B1_ZZREGIM: TStringField
      FieldName = 'B1_ZZREGIM'
      Origin = 'B1_ZZREGIM'
      Size = 2
    end
    object SB1B1_ZZCTCJ: TStringField
      FieldName = 'B1_ZZCTCJ'
      Origin = 'B1_ZZCTCJ'
      Size = 1
    end
    object SB1B1_ZZCLSIS: TStringField
      FieldName = 'B1_ZZCLSIS'
      Origin = 'B1_ZZCLSIS'
      Size = 1
    end
    object SB1B1_ZZFRCON: TStringField
      FieldName = 'B1_ZZFRCON'
      Origin = 'B1_ZZFRCON'
      Size = 3
    end
    object SB1B1_ZZTFREI: TFloatField
      FieldName = 'B1_ZZTFREI'
      Origin = 'B1_ZZTFREI'
    end
    object SB1B1_ZZRPM: TFloatField
      FieldName = 'B1_ZZRPM'
      Origin = 'B1_ZZRPM'
    end
    object SB1B1_ZZREDUC: TFloatField
      FieldName = 'B1_ZZREDUC'
      Origin = 'B1_ZZREDUC'
    end
    object SB1B1_ZZPINT: TStringField
      FieldName = 'B1_ZZPINT'
      Origin = 'B1_ZZPINT'
      Size = 30
    end
    object SB1B1_ZZELEVT: TStringField
      FieldName = 'B1_ZZELEVT'
      Origin = 'B1_ZZELEVT'
      Size = 5
    end
    object SB1B1_ZZNFASE: TFloatField
      FieldName = 'B1_ZZNFASE'
      Origin = 'B1_ZZNFASE'
    end
    object SB1B1_ZZCARC: TStringField
      FieldName = 'B1_ZZCARC'
      Origin = 'B1_ZZCARC'
      Size = 7
    end
    object SB1B1_ZZOBS: TWideMemoField
      FieldName = 'B1_ZZOBS'
      Origin = 'B1_ZZOBS'
      BlobType = ftWideMemo
    end
    object SB1B1_ZZNORMA: TStringField
      FieldName = 'B1_ZZNORMA'
      Origin = 'B1_ZZNORMA'
      Size = 1
    end
    object SB1B1_ZZMEN1: TStringField
      FieldName = 'B1_ZZMEN1'
      Origin = 'B1_ZZMEN1'
      Size = 3
    end
    object SB1B1_PARCEI: TStringField
      FieldName = 'B1_PARCEI'
      Origin = 'B1_PARCEI'
      Size = 6
    end
    object SB1B1_DESPIMP: TStringField
      FieldName = 'B1_DESPIMP'
      Origin = 'B1_DESPIMP'
      Size = 1
    end
    object SB1B1_PMACNUT: TFloatField
      FieldName = 'B1_PMACNUT'
      Origin = 'B1_PMACNUT'
    end
    object SB1B1_PMICNUT: TFloatField
      FieldName = 'B1_PMICNUT'
      Origin = 'B1_PMICNUT'
    end
    object SB1B1_CODQAD: TStringField
      FieldName = 'B1_CODQAD'
      Origin = 'B1_CODQAD'
      Size = 13
    end
    object SB1B1_QBP: TFloatField
      FieldName = 'B1_QBP'
      Origin = 'B1_QBP'
    end
    object SB1B1_VLR_PIS: TFloatField
      FieldName = 'B1_VLR_PIS'
      Origin = 'B1_VLR_PIS'
    end
    object SB1B1_PRFDSUL: TFloatField
      FieldName = 'B1_PRFDSUL'
      Origin = 'B1_PRFDSUL'
    end
    object SB1B1_CODANT: TStringField
      FieldName = 'B1_CODANT'
      Origin = 'B1_CODANT'
      Size = 15
    end
    object SB1B1_FETHAB: TStringField
      FieldName = 'B1_FETHAB'
      Origin = 'B1_FETHAB'
      Size = 1
    end
    object SB1B1_VLR_COF: TFloatField
      FieldName = 'B1_VLR_COF'
      Origin = 'B1_VLR_COF'
    end
    object SB1D_E_L_E_T_: TStringField
      FieldName = 'D_E_L_E_T_'
      Origin = 'D_E_L_E_T_'
      Size = 1
    end
    object SB1R_E_C_N_O_: TIntegerField
      FieldName = 'R_E_C_N_O_'
      Origin = 'R_E_C_N_O_'
    end
    object SB1R_E_C_D_E_L_: TIntegerField
      FieldName = 'R_E_C_D_E_L_'
      Origin = 'R_E_C_D_E_L_'
    end
    object SB1B1_MAT: TStringField
      FieldName = 'B1_MAT'
      Origin = 'B1_MAT'
      Size = 10
    end
    object SB1B1_OBS: TWideMemoField
      FieldName = 'B1_OBS'
      Origin = 'B1_OBS'
      BlobType = ftWideMemo
    end
    object SB1B1_VM_I: TWideMemoField
      FieldName = 'B1_VM_I'
      Origin = 'B1_VM_I'
      BlobType = ftWideMemo
    end
    object SB1B1_VM_GI: TWideMemoField
      FieldName = 'B1_VM_GI'
      Origin = 'B1_VM_GI'
      BlobType = ftWideMemo
    end
    object SB1B1_VM_P: TWideMemoField
      FieldName = 'B1_VM_P'
      Origin = 'B1_VM_P'
      BlobType = ftWideMemo
    end
    object SB1B1_SUBG: TStringField
      FieldName = 'B1_SUBG'
      Origin = 'B1_SUBG'
      Size = 10
    end
  end
  object _ExecSQL: TSqlServerMethod
    Params = <
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'Comando'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'ado'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'conexao'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'ReturnParameter'
        ParamType = ptResult
        Size = 4
      end>
    SQLConnection = _SQL
    ServerMethodName = 'TSM.ExecSQL'
    Left = 226
    Top = 216
  end
  object DTAB: TClientDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = DSM
    Left = 376
    Top = 232
  end
  object AUX: TFDQuery
    Connection = FdCon
    FetchOptions.AssignedValues = [evRecordCountMode]
    FetchOptions.RecordCountMode = cmTotal
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amNonBlocking
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvCountUpdatedRecords, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.RefreshMode = rmAll
    UpdateOptions.CountUpdatedRecords = False
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    Left = 192
    Top = 352
  end
  object SA1: TFDQuery
    Connection = FdCon
    FetchOptions.AssignedValues = [evRecordCountMode]
    FetchOptions.RecordCountMode = cmTotal
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amNonBlocking
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvCountUpdatedRecords, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.RefreshMode = rmAll
    UpdateOptions.CountUpdatedRecords = False
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    SQL.Strings = (
      'Select * from SA1010')
    Left = 136
    Top = 352
    object SA1A1_MAIDUPL: TLargeintField
      FieldName = 'A1_MAIDUPL'
      Origin = 'A1_MAIDUPL'
    end
    object SA1A1_CEPE: TStringField
      FieldName = 'A1_CEPE'
      Origin = 'A1_CEPE'
      Size = 10
    end
    object SA1A1_ESTE: TStringField
      FieldName = 'A1_ESTE'
      Origin = 'A1_ESTE'
      Size = 10
    end
    object SA1A1_SATIV1: TStringField
      FieldName = 'A1_SATIV1'
      Origin = 'A1_SATIV1'
      Size = 10
    end
    object SA1A1_DSATIV1: TStringField
      FieldName = 'A1_DSATIV1'
      Origin = 'A1_DSATIV1'
      Size = 40
    end
    object SA1A1_SATIV2: TStringField
      FieldName = 'A1_SATIV2'
      Origin = 'A1_SATIV2'
      Size = 10
    end
    object SA1A1_DSATIV2: TStringField
      FieldName = 'A1_DSATIV2'
      Origin = 'A1_DSATIV2'
      Size = 40
    end
    object SA1A1_CODPAIS: TLargeintField
      FieldName = 'A1_CODPAIS'
      Origin = 'A1_CODPAIS'
    end
    object SA1A1_TPESSOA: TStringField
      FieldName = 'A1_TPESSOA'
      Origin = 'A1_TPESSOA'
      Size = 10
    end
    object SA1A1_CODLOC: TStringField
      FieldName = 'A1_CODLOC'
      Origin = 'A1_CODLOC'
      Size = 10
    end
    object SA1A1_SATIV3: TStringField
      FieldName = 'A1_SATIV3'
      Origin = 'A1_SATIV3'
      Size = 10
    end
    object SA1A1_DSATIV3: TStringField
      FieldName = 'A1_DSATIV3'
      Origin = 'A1_DSATIV3'
      Size = 40
    end
    object SA1A1_SATIV4: TStringField
      FieldName = 'A1_SATIV4'
      Origin = 'A1_SATIV4'
      Size = 10
    end
    object SA1A1_TABELA: TStringField
      DisplayLabel = 'Tabela de Pre'#231'o'
      FieldName = 'A1_TABELA'
      Origin = 'A1_TABELA'
      Size = 10
    end
    object SA1A1_INCISS: TStringField
      FieldName = 'A1_INCISS'
      Origin = 'A1_INCISS'
      Size = 10
    end
    object SA1A1_SALDUPM: TLargeintField
      FieldName = 'A1_SALDUPM'
      Origin = 'A1_SALDUPM'
    end
    object SA1A1_PAGATR: TLargeintField
      FieldName = 'A1_PAGATR'
      Origin = 'A1_PAGATR'
    end
    object SA1A1_CXPOSTA: TStringField
      FieldName = 'A1_CXPOSTA'
      Origin = 'A1_CXPOSTA'
    end
    object SA1A1_ATIVIDA: TStringField
      FieldName = 'A1_ATIVIDA'
      Origin = 'A1_ATIVIDA'
      Size = 10
    end
    object SA1A1_CARGO1: TStringField
      FieldName = 'A1_CARGO1'
      Origin = 'A1_CARGO1'
      Size = 15
    end
    object SA1A1_CARGO2: TStringField
      FieldName = 'A1_CARGO2'
      Origin = 'A1_CARGO2'
      Size = 15
    end
    object SA1A1_CARGO3: TStringField
      FieldName = 'A1_CARGO3'
      Origin = 'A1_CARGO3'
      Size = 15
    end
    object SA1A1_ALIQIR: TLargeintField
      FieldName = 'A1_ALIQIR'
      Origin = 'A1_ALIQIR'
    end
    object SA1A1_SUPER: TStringField
      FieldName = 'A1_SUPER'
      Origin = 'A1_SUPER'
      Size = 10
    end
    object SA1A1_RTEC: TStringField
      FieldName = 'A1_RTEC'
      Origin = 'A1_RTEC'
      Size = 10
    end
    object SA1A1_OBSERV: TStringField
      FieldName = 'A1_OBSERV'
      Origin = 'A1_OBSERV'
      Size = 40
    end
    object SA1A1_RG: TStringField
      FieldName = 'A1_RG'
      Origin = 'A1_RG'
      Size = 15
    end
    object SA1A1_CALCSUF: TStringField
      FieldName = 'A1_CALCSUF'
      Origin = 'A1_CALCSUF'
      Size = 10
    end
    object SA1A1_DTNASC: TStringField
      FieldName = 'A1_DTNASC'
      Origin = 'A1_DTNASC'
      Size = 10
    end
    object SA1A1_SALPEDB: TLargeintField
      FieldName = 'A1_SALPEDB'
      Origin = 'A1_SALPEDB'
    end
    object SA1A1_CLIFAT: TStringField
      FieldName = 'A1_CLIFAT'
      Origin = 'A1_CLIFAT'
      Size = 10
    end
    object SA1A1_GRPTRIB: TStringField
      FieldName = 'A1_GRPTRIB'
      Origin = 'A1_GRPTRIB'
      Size = 10
    end
    object SA1A1_BAIRROC: TStringField
      FieldName = 'A1_BAIRROC'
      Origin = 'A1_BAIRROC'
      Size = 220
    end
    object SA1A1_CEPC: TStringField
      FieldName = 'A1_CEPC'
      Origin = 'A1_CEPC'
      Size = 10
    end
    object SA1A1_MUNC: TStringField
      FieldName = 'A1_MUNC'
      Origin = 'A1_MUNC'
      Size = 15
    end
    object SA1A1_ESTC: TStringField
      FieldName = 'A1_ESTC'
      Origin = 'A1_ESTC'
      Size = 10
    end
    object SA1A1_BAIRROE: TStringField
      FieldName = 'A1_BAIRROE'
      Origin = 'A1_BAIRROE'
      Size = 220
    end
    object SA1A1_MUNE: TStringField
      FieldName = 'A1_MUNE'
      Origin = 'A1_MUNE'
      Size = 15
    end
    object SA1A1_DSATIV4: TStringField
      FieldName = 'A1_DSATIV4'
      Origin = 'A1_DSATIV4'
      Size = 40
    end
    object SA1A1_SATIV5: TStringField
      FieldName = 'A1_SATIV5'
      Origin = 'A1_SATIV5'
      Size = 10
    end
    object SA1A1_DSATIV5: TStringField
      FieldName = 'A1_DSATIV5'
      Origin = 'A1_DSATIV5'
      Size = 40
    end
    object SA1A1_SATIV6: TStringField
      FieldName = 'A1_SATIV6'
      Origin = 'A1_SATIV6'
      Size = 10
    end
    object SA1A1_DSATIV6: TStringField
      FieldName = 'A1_DSATIV6'
      Origin = 'A1_DSATIV6'
      Size = 40
    end
    object SA1A1_SATIV7: TStringField
      FieldName = 'A1_SATIV7'
      Origin = 'A1_SATIV7'
      Size = 10
    end
    object SA1A1_DSATIV7: TStringField
      FieldName = 'A1_DSATIV7'
      Origin = 'A1_DSATIV7'
      Size = 40
    end
    object SA1A1_SATIV8: TStringField
      FieldName = 'A1_SATIV8'
      Origin = 'A1_SATIV8'
      Size = 10
    end
    object SA1A1_DSATIV8: TStringField
      FieldName = 'A1_DSATIV8'
      Origin = 'A1_DSATIV8'
      Size = 40
    end
    object SA1A1_CODMARC: TStringField
      FieldName = 'A1_CODMARC'
      Origin = 'A1_CODMARC'
      Size = 10
    end
    object SA1A1_CODAGE: TStringField
      FieldName = 'A1_CODAGE'
      Origin = 'A1_CODAGE'
      Size = 10
    end
    object SA1A1_VM_MARC: TWideMemoField
      FieldName = 'A1_VM_MARC'
      Origin = 'A1_VM_MARC'
      BlobType = ftWideMemo
    end
    object SA1A1_COMAGE: TLargeintField
      FieldName = 'A1_COMAGE'
      Origin = 'A1_COMAGE'
    end
    object SA1A1_TIPCLI: TStringField
      FieldName = 'A1_TIPCLI'
      Origin = 'A1_TIPCLI'
      Size = 10
    end
    object SA1A1_EMAIL: TStringField
      FieldName = 'A1_EMAIL'
      Origin = 'A1_EMAIL'
      Size = 30
    end
    object SA1A1_DEST_1: TStringField
      FieldName = 'A1_DEST_1'
      Origin = 'A1_DEST_1'
      Size = 10
    end
    object SA1A1_CODMUN: TStringField
      FieldName = 'A1_CODMUN'
      Origin = 'A1_CODMUN'
      Size = 10
    end
    object SA1A1_DEST_2: TStringField
      FieldName = 'A1_DEST_2'
      Origin = 'A1_DEST_2'
      Size = 10
    end
    object SA1A1_HPAGE: TStringField
      FieldName = 'A1_HPAGE'
      Origin = 'A1_HPAGE'
      Size = 30
    end
    object SA1A1_DEST_3: TStringField
      FieldName = 'A1_DEST_3'
      Origin = 'A1_DEST_3'
      Size = 10
    end
    object SA1A1_CONDPAG: TStringField
      FieldName = 'A1_CONDPAG'
      Origin = 'A1_CONDPAG'
      Size = 10
    end
    object SA1A1_DIASPAG: TLargeintField
      FieldName = 'A1_DIASPAG'
      Origin = 'A1_DIASPAG'
    end
    object SA1A1_DESCPAG: TStringField
      FieldName = 'A1_DESCPAG'
      Origin = 'A1_DESCPAG'
      Size = 60
    end
    object SA1A1_OBS: TStringField
      FieldName = 'A1_OBS'
      Origin = 'A1_OBS'
      Size = 255
    end
    object SA1A1_AGREG: TStringField
      FieldName = 'A1_AGREG'
      Origin = 'A1_AGREG'
      Size = 10
    end
    object SA1A1_MATR: TLargeintField
      FieldName = 'A1_MATR'
      Origin = 'A1_MATR'
    end
    object SA1A1_VM_OBS: TWideMemoField
      FieldName = 'A1_VM_OBS'
      Origin = 'A1_VM_OBS'
      BlobType = ftWideMemo
    end
    object SA1A1_CODHIST: TStringField
      FieldName = 'A1_CODHIST'
      Origin = 'A1_CODHIST'
      Size = 10
    end
    object SA1A1_RECINSS: TStringField
      FieldName = 'A1_RECINSS'
      Origin = 'A1_RECINSS'
      Size = 10
    end
    object SA1A1_RECCOFI: TStringField
      FieldName = 'A1_RECCOFI'
      Origin = 'A1_RECCOFI'
      Size = 10
    end
    object SA1A1_RECCSLL: TStringField
      FieldName = 'A1_RECCSLL'
      Origin = 'A1_RECCSLL'
      Size = 10
    end
    object SA1A1_RECPIS: TStringField
      FieldName = 'A1_RECPIS'
      Origin = 'A1_RECPIS'
      Size = 10
    end
    object SA1A1_HISTMK: TWideMemoField
      FieldName = 'A1_HISTMK'
      Origin = 'A1_HISTMK'
      BlobType = ftWideMemo
    end
    object SA1A1_TIPPER: TStringField
      FieldName = 'A1_TIPPER'
      Origin = 'A1_TIPPER'
      Size = 10
    end
    object SA1A1_COD_MUN: TStringField
      FieldName = 'A1_COD_MUN'
      Origin = 'A1_COD_MUN'
      Size = 10
    end
    object SA1A1_SALFIN: TLargeintField
      FieldName = 'A1_SALFIN'
      Origin = 'A1_SALFIN'
    end
    object SA1A1_CONTAB: TStringField
      FieldName = 'A1_CONTAB'
      Origin = 'A1_CONTAB'
      Size = 15
    end
    object SA1A1_SALFINM: TLargeintField
      FieldName = 'A1_SALFINM'
      Origin = 'A1_SALFINM'
    end
    object SA1A1_B2B: TStringField
      FieldName = 'A1_B2B'
      Origin = 'A1_B2B'
      Size = 10
    end
    object SA1A1_GRPVEN: TStringField
      FieldName = 'A1_GRPVEN'
      Origin = 'A1_GRPVEN'
      Size = 10
    end
    object SA1A1_CLICNV: TStringField
      FieldName = 'A1_CLICNV'
      Origin = 'A1_CLICNV'
      Size = 10
    end
    object SA1A1_INSCRUR: TStringField
      FieldName = 'A1_INSCRUR'
      Origin = 'A1_INSCRUR'
      Size = 18
    end
    object SA1A1_MSBLQL: TStringField
      FieldName = 'A1_MSBLQL'
      Origin = 'A1_MSBLQL'
      Size = 10
    end
    object SA1A1_SITUA: TStringField
      FieldName = 'A1_SITUA'
      Origin = 'A1_SITUA'
      Size = 10
    end
    object SA1A1_NUMRA: TStringField
      FieldName = 'A1_NUMRA'
      Origin = 'A1_NUMRA'
      Size = 15
    end
    object SA1A1_SUBCOD: TStringField
      FieldName = 'A1_SUBCOD'
      Origin = 'A1_SUBCOD'
      Size = 10
    end
    object SA1A1_CDRDES: TStringField
      FieldName = 'A1_CDRDES'
      Origin = 'A1_CDRDES'
      Size = 10
    end
    object SA1A1_REGDES: TStringField
      FieldName = 'A1_REGDES'
      Origin = 'A1_REGDES'
      Size = 30
    end
    object SA1A1_FILDEB: TStringField
      FieldName = 'A1_FILDEB'
      Origin = 'A1_FILDEB'
      Size = 10
    end
    object SA1A1_CODFOR: TStringField
      FieldName = 'A1_CODFOR'
      Origin = 'A1_CODFOR'
      Size = 15
    end
    object SA1A1_FILIAL: TStringField
      FieldName = 'A1_FILIAL'
      Origin = 'A1_FILIAL'
      Size = 10
    end
    object SA1A1_LOJA: TStringField
      FieldName = 'A1_LOJA'
      Origin = 'A1_LOJA'
      Size = 10
    end
    object SA1A1_PESSOA: TStringField
      FieldName = 'A1_PESSOA'
      Origin = 'A1_PESSOA'
      Size = 10
    end
    object SA1A1_NOME: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 200
      FieldName = 'A1_NOME'
      Origin = 'A1_NOME'
      Size = 200
    end
    object SA1A1_NREDUZ: TStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'A1_NREDUZ'
      Origin = 'A1_NREDUZ'
      Size = 200
    end
    object SA1A1_TIPO: TStringField
      FieldName = 'A1_TIPO'
      Origin = 'A1_TIPO'
      Size = 10
    end
    object SA1A1_COD: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 50
      FieldName = 'A1_COD'
      Origin = 'A1_COD'
      Size = 50
    end
    object SA1A1_END: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'A1_END'
      Origin = 'A1_END'
      Size = 100
    end
    object SA1A1_MUN: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'A1_MUN'
      Origin = 'A1_MUN'
      Size = 15
    end
    object SA1A1_EST: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'A1_EST'
      Origin = 'A1_EST'
      Size = 10
    end
    object SA1A1_NATUREZ: TStringField
      FieldName = 'A1_NATUREZ'
      Origin = 'A1_NATUREZ'
      Size = 10
    end
    object SA1A1_ESTADO: TStringField
      FieldName = 'A1_ESTADO'
      Origin = 'A1_ESTADO'
    end
    object SA1A1_BAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'A1_BAIRRO'
      Origin = 'A1_BAIRRO'
      Size = 30
    end
    object SA1A1_CEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'A1_CEP'
      Origin = 'A1_CEP'
      Size = 10
    end
    object SA1A1_DDI: TStringField
      FieldName = 'A1_DDI'
      Origin = 'A1_DDI'
      Size = 10
    end
    object SA1A1_DDD: TStringField
      FieldName = 'A1_DDD'
      Origin = 'A1_DDD'
      Size = 10
    end
    object SA1A1_TEL: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'A1_TEL'
      Origin = 'A1_TEL'
      Size = 255
    end
    object SA1A1_TELEX: TStringField
      FieldName = 'A1_TELEX'
      Origin = 'A1_TELEX'
      Size = 10
    end
    object SA1A1_FAX: TStringField
      FieldName = 'A1_FAX'
      Origin = 'A1_FAX'
      Size = 15
    end
    object SA1A1_ENDCOB: TStringField
      FieldName = 'A1_ENDCOB'
      Origin = 'A1_ENDCOB'
      Size = 100
    end
    object SA1A1_PAIS: TStringField
      FieldName = 'A1_PAIS'
      Origin = 'A1_PAIS'
      Size = 10
    end
    object SA1A1_INSCRM: TStringField
      FieldName = 'A1_INSCRM'
      Origin = 'A1_INSCRM'
      Size = 18
    end
    object SA1A1_VEND: TStringField
      FieldName = 'A1_VEND'
      Origin = 'A1_VEND'
      Size = 10
    end
    object SA1A1_COMIS: TLargeintField
      FieldName = 'A1_COMIS'
      Origin = 'A1_COMIS'
    end
    object SA1A1_REGIAO: TStringField
      FieldName = 'A1_REGIAO'
      Origin = 'A1_REGIAO'
      Size = 10
    end
    object SA1A1_CONTA: TStringField
      FieldName = 'A1_CONTA'
      Origin = 'A1_CONTA'
    end
    object SA1A1_BCO1: TStringField
      FieldName = 'A1_BCO1'
      Origin = 'A1_BCO1'
      Size = 10
    end
    object SA1A1_BCO2: TStringField
      FieldName = 'A1_BCO2'
      Origin = 'A1_BCO2'
      Size = 10
    end
    object SA1A1_BCO3: TStringField
      FieldName = 'A1_BCO3'
      Origin = 'A1_BCO3'
      Size = 10
    end
    object SA1A1_BCO4: TStringField
      FieldName = 'A1_BCO4'
      Origin = 'A1_BCO4'
      Size = 10
    end
    object SA1A1_BCO5: TStringField
      FieldName = 'A1_BCO5'
      Origin = 'A1_BCO5'
      Size = 10
    end
    object SA1A1_TRANSP: TStringField
      FieldName = 'A1_TRANSP'
      Origin = 'A1_TRANSP'
      Size = 10
    end
    object SA1A1_TPFRET: TStringField
      FieldName = 'A1_TPFRET'
      Origin = 'A1_TPFRET'
      Size = 10
    end
    object SA1A1_COND: TStringField
      FieldName = 'A1_COND'
      Origin = 'A1_COND'
      Size = 10
    end
    object SA1A1_DESC: TLargeintField
      FieldName = 'A1_DESC'
      Origin = 'A1_DESC'
    end
    object SA1A1_PRIOR: TStringField
      FieldName = 'A1_PRIOR'
      Origin = 'A1_PRIOR'
      Size = 10
    end
    object SA1A1_RISCO: TStringField
      FieldName = 'A1_RISCO'
      Origin = 'A1_RISCO'
      Size = 10
    end
    object SA1A1_LC: TLargeintField
      FieldName = 'A1_LC'
      Origin = 'A1_LC'
    end
    object SA1A1_VENCLC: TStringField
      FieldName = 'A1_VENCLC'
      Origin = 'A1_VENCLC'
      Size = 10
    end
    object SA1A1_CLASSE: TStringField
      FieldName = 'A1_CLASSE'
      Origin = 'A1_CLASSE'
      Size = 10
    end
    object SA1A1_LCFIN: TLargeintField
      FieldName = 'A1_LCFIN'
      Origin = 'A1_LCFIN'
    end
    object SA1A1_MOEDALC: TLargeintField
      FieldName = 'A1_MOEDALC'
      Origin = 'A1_MOEDALC'
    end
    object SA1A1_MSALDO: TLargeintField
      FieldName = 'A1_MSALDO'
      Origin = 'A1_MSALDO'
    end
    object SA1A1_MCOMPRA: TLargeintField
      FieldName = 'A1_MCOMPRA'
      Origin = 'A1_MCOMPRA'
    end
    object SA1A1_ABICS: TStringField
      FieldName = 'A1_ABICS'
      Origin = 'A1_ABICS'
      Size = 10
    end
    object SA1A1_BLEMAIL: TStringField
      FieldName = 'A1_BLEMAIL'
      Origin = 'A1_BLEMAIL'
      Size = 10
    end
    object SA1A1_TIPOCLI: TStringField
      FieldName = 'A1_TIPOCLI'
      Origin = 'A1_TIPOCLI'
      Size = 10
    end
    object SA1A1_IBGE: TStringField
      FieldName = 'A1_IBGE'
      Origin = 'A1_IBGE'
      Size = 11
    end
    object SA1A1_SIMPLES: TStringField
      FieldName = 'A1_SIMPLES'
      Origin = 'A1_SIMPLES'
      Size = 10
    end
    object SA1A1_ABATIMP: TStringField
      FieldName = 'A1_ABATIMP'
      Origin = 'A1_ABATIMP'
      Size = 10
    end
    object SA1A1_RECIRRF: TStringField
      FieldName = 'A1_RECIRRF'
      Origin = 'A1_RECIRRF'
      Size = 10
    end
    object SA1A1_METR: TLargeintField
      FieldName = 'A1_METR'
      Origin = 'A1_METR'
    end
    object SA1A1_PAISDES: TStringField
      FieldName = 'A1_PAISDES'
      Origin = 'A1_PAISDES'
      Size = 25
    end
    object SA1A1_ENDENT: TStringField
      FieldName = 'A1_ENDENT'
      Origin = 'A1_ENDENT'
      Size = 100
    end
    object SA1A1_ENDREC: TStringField
      FieldName = 'A1_ENDREC'
      Origin = 'A1_ENDREC'
      Size = 120
    end
    object SA1A1_CGC: TStringField
      DisplayWidth = 32
      FieldName = 'A1_CGC'
      Origin = 'A1_CGC'
      Size = 32
    end
    object SA1A1_CONTATO: TStringField
      FieldName = 'A1_CONTATO'
      Origin = 'A1_CONTATO'
      Size = 15
    end
    object SA1A1_INSCR: TStringField
      FieldName = 'A1_INSCR'
      Origin = 'A1_INSCR'
      Size = 18
    end
    object SA1A1_PFISICA: TStringField
      FieldName = 'A1_PFISICA'
      Origin = 'A1_PFISICA'
      Size = 18
    end
    object SA1A1_PRICOM: TStringField
      FieldName = 'A1_PRICOM'
      Origin = 'A1_PRICOM'
      Size = 10
    end
    object SA1A1_ULTCOM: TStringField
      FieldName = 'A1_ULTCOM'
      Origin = 'A1_ULTCOM'
      Size = 10
    end
    object SA1A1_NROCOM: TLargeintField
      FieldName = 'A1_NROCOM'
      Origin = 'A1_NROCOM'
    end
    object SA1A1_FORMVIS: TStringField
      FieldName = 'A1_FORMVIS'
      Origin = 'A1_FORMVIS'
      Size = 10
    end
    object SA1A1_TEMVIS: TLargeintField
      FieldName = 'A1_TEMVIS'
      Origin = 'A1_TEMVIS'
    end
    object SA1A1_ULTVIS: TStringField
      FieldName = 'A1_ULTVIS'
      Origin = 'A1_ULTVIS'
      Size = 10
    end
    object SA1A1_TMPVIS: TStringField
      FieldName = 'A1_TMPVIS'
      Origin = 'A1_TMPVIS'
      Size = 10
    end
    object SA1A1_TMPSTD: TStringField
      FieldName = 'A1_TMPSTD'
      Origin = 'A1_TMPSTD'
      Size = 10
    end
    object SA1A1_CLASVEN: TStringField
      FieldName = 'A1_CLASVEN'
      Origin = 'A1_CLASVEN'
      Size = 10
    end
    object SA1A1_MENSAGE: TStringField
      FieldName = 'A1_MENSAGE'
      Origin = 'A1_MENSAGE'
      Size = 10
    end
    object SA1A1_SALDUP: TLargeintField
      FieldName = 'A1_SALDUP'
      Origin = 'A1_SALDUP'
    end
    object SA1A1_RECISS: TStringField
      FieldName = 'A1_RECISS'
      Origin = 'A1_RECISS'
      Size = 10
    end
    object SA1A1_NROPAG: TLargeintField
      FieldName = 'A1_NROPAG'
      Origin = 'A1_NROPAG'
    end
    object SA1A1_SALPEDL: TLargeintField
      FieldName = 'A1_SALPEDL'
      Origin = 'A1_SALPEDL'
    end
    object SA1A1_TRANSF: TStringField
      FieldName = 'A1_TRANSF'
      Origin = 'A1_TRANSF'
      Size = 10
    end
    object SA1A1_SUFRAMA: TStringField
      FieldName = 'A1_SUFRAMA'
      Origin = 'A1_SUFRAMA'
      Size = 12
    end
    object SA1A1_ATR: TLargeintField
      FieldName = 'A1_ATR'
      Origin = 'A1_ATR'
    end
    object SA1A1_VACUM: TLargeintField
      FieldName = 'A1_VACUM'
      Origin = 'A1_VACUM'
    end
    object SA1A1_SALPED: TLargeintField
      FieldName = 'A1_SALPED'
      Origin = 'A1_SALPED'
    end
    object SA1A1_TITPROT: TLargeintField
      FieldName = 'A1_TITPROT'
      Origin = 'A1_TITPROT'
    end
    object SA1A1_DTULTIT: TStringField
      FieldName = 'A1_DTULTIT'
      Origin = 'A1_DTULTIT'
      Size = 10
    end
    object SA1A1_CHQDEVO: TLargeintField
      FieldName = 'A1_CHQDEVO'
      Origin = 'A1_CHQDEVO'
    end
    object SA1A1_DTULCHQ: TStringField
      FieldName = 'A1_DTULCHQ'
      Origin = 'A1_DTULCHQ'
      Size = 10
    end
    object SA1R_E_C_N_O_: TIntegerField
      FieldName = 'R_E_C_N_O_'
      Origin = 'R_E_C_N_O_'
    end
    object SA1R_E_C_D_E_L_: TIntegerField
      FieldName = 'R_E_C_D_E_L_'
      Origin = 'R_E_C_D_E_L_'
    end
    object SA1D_E_L_E_T_: TStringField
      FieldName = 'D_E_L_E_T_'
      Origin = 'D_E_L_E_T_'
      Size = 1
    end
  end
  object alerta: TClientDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = DSM
    Left = 376
    Top = 128
  end
  object TRANSPORTE: TClientDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = DSM
    Left = 376
    Top = 176
  end
  object EMPRESA: TClientDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = DSM
    Left = 136
    Top = 302
  end
  object _SQL: TSQLConnection
    ConnectionName = 'DataSnapCONNECTION'
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'HostName=virtus.ti9.com.br'
      'DriverUnit=DBXDataSnap'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=visualbusiness/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=15.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'DriverName=DataSnap'
      'Port=212'
      'Filters={}'
      'DSAuthenticationUser=goodsales'
      'DSAuthenticationPassword=good&@le&'
      'DSProxyPort=8889'
      'BufferKBSize=32')
    Left = 130
    Top = 144
    UniqueId = '{CC0F01AD-2467-4227-8CF6-C27C44005DA8}'
  end
  object SetAmbiente: TSqlServerMethod
    Params = <
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'nome'
        ParamType = ptInput
        Value = 'PRODUCAO'
      end>
    SQLConnection = _SQL
    ServerMethodName = 'TSM.setAmbiente'
    Left = 192
    Top = 144
  end
  object DSM: TDSProviderConnection
    ServerClassName = 'TSM'
    SQLConnection = _SQL
    Left = 258
    Top = 141
  end
  object USUARIO: TClientDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = DSM
    Left = 136
    Top = 246
  end
  object _GeraSQL: TSqlServerMethod
    Params = <
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'Comando'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'ado'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'conexao'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'ReturnParameter'
        ParamType = ptResult
        Size = 4
      end>
    SQLConnection = _SQL
    ServerMethodName = 'TSM.GeraSQL'
    Left = 138
    Top = 192
  end
  object FdCon: TFDConnection
    Params.Strings = (
      'OpenMode=ReadWrite'
      'Database=C:\Projetos\VisualBusiness\meSales\dados.db'
      'SharedCache=False'
      'CacheSize=500'
      'DriverID=SQLite')
    FetchOptions.AssignedValues = [evRecordCountMode]
    FetchOptions.RecordCountMode = cmTotal
    ResourceOptions.AssignedValues = [rvCmdExecMode, rvAutoReconnect]
    ResourceOptions.CmdExecMode = amNonBlocking
    ResourceOptions.AutoReconnect = True
    UpdateOptions.AssignedValues = [uvUpdateMode, uvLockMode, uvLockPoint, uvRefreshMode, uvRefreshDelete, uvCountUpdatedRecords, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.UpdateMode = upWhereChanged
    UpdateOptions.RefreshMode = rmAll
    UpdateOptions.RefreshDelete = False
    UpdateOptions.CountUpdatedRecords = False
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    UpdateOptions.AutoCommitUpdates = True
    LoginPrompt = False
    Left = 64
    Top = 136
  end
  object FDManager1: TFDManager
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <>
    Active = True
    Left = 856
    Top = 136
  end
  object FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Provider = 'FMX'
    Left = 728
    Top = 80
  end
  object FDGUIxLoginDialog1: TFDGUIxLoginDialog
    Provider = 'FMX'
    Left = 856
    Top = 24
  end
  object FDGUIxAsyncExecuteDialog1: TFDGUIxAsyncExecuteDialog
    Provider = 'FMX'
    Left = 856
    Top = 80
  end
  object FDGUIxScriptDialog1: TFDGUIxScriptDialog
    Provider = 'FMX'
    Left = 728
    Top = 136
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 728
    Top = 24
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 64
    Top = 32
  end
  object _da1: TClientDataSet
    Aggregates = <>
    FileName = 'C:\GoodSales\tabp.xml'
    Params = <>
    RemoteServer = DSM
    Left = 780
    Top = 408
    object _da1DA1_FILIAL: TStringField
      FieldName = 'DA1_FILIAL'
      Origin = 'DA1_FILIAL'
      Size = 10
    end
    object _da1DA1_VLRDES: TSingleField
      FieldName = 'DA1_VLRDES'
      Origin = 'DA1_VLRDES'
    end
    object _da1DA1_PERDES: TSingleField
      FieldName = 'DA1_PERDES'
      Origin = 'DA1_PERDES'
    end
    object _da1DA1_ATIVO: TStringField
      FieldName = 'DA1_ATIVO'
      Origin = 'DA1_ATIVO'
      Size = 10
    end
    object _da1DA1_FRETE: TSingleField
      FieldName = 'DA1_FRETE'
      Origin = 'DA1_FRETE'
    end
    object _da1DA1_ESTADO: TStringField
      FieldName = 'DA1_ESTADO'
      Origin = 'DA1_ESTADO'
      Size = 10
    end
    object _da1DA1_TPOPER: TStringField
      FieldName = 'DA1_TPOPER'
      Origin = 'DA1_TPOPER'
      Size = 10
    end
    object _da1DA1_QTDLOT: TSingleField
      FieldName = 'DA1_QTDLOT'
      Origin = 'DA1_QTDLOT'
    end
    object _da1DA1_INDLOT: TStringField
      FieldName = 'DA1_INDLOT'
      Origin = 'DA1_INDLOT'
    end
    object _da1DA1_MOEDA: TSingleField
      FieldName = 'DA1_MOEDA'
      Origin = 'DA1_MOEDA'
    end
    object _da1DA1_DATVIG: TStringField
      FieldName = 'DA1_DATVIG'
      Origin = 'DA1_DATVIG'
      Size = 10
    end
    object _da1DA1_ITEM: TStringField
      FieldName = 'DA1_ITEM'
      Origin = 'DA1_ITEM'
      Size = 10
    end
    object _da1DA1_CODTAB: TStringField
      FieldName = 'DA1_CODTAB'
      Origin = 'DA1_CODTAB'
      Size = 10
    end
    object _da1DA1_DESTAB: TStringField
      FieldName = 'DA1_DESTAB'
      Origin = 'DA1_DESTAB'
      Size = 30
    end
    object _da1DA1_CODPRO: TStringField
      FieldName = 'DA1_CODPRO'
      Origin = 'DA1_CODPRO'
    end
    object _da1DA1_DESCRI: TStringField
      FieldName = 'DA1_DESCRI'
      Origin = 'DA1_DESCRI'
      Size = 300
    end
    object _da1DA1_PRCBAS: TSingleField
      FieldName = 'DA1_PRCBAS'
      Origin = 'DA1_PRCBAS'
    end
    object _da1DA1_PRCVEN: TSingleField
      FieldName = 'DA1_PRCVEN'
      Origin = 'DA1_PRCVEN'
    end
    object _da1R_E_C_N_O_: TIntegerField
      FieldName = 'R_E_C_N_O_'
      Origin = 'R_E_C_N_O_'
    end
    object _da1R_E_C_D_E_L_: TIntegerField
      FieldName = 'R_E_C_D_E_L_'
      Origin = 'R_E_C_D_E_L_'
    end
    object _da1D_E_L_E_T_: TStringField
      FieldName = 'D_E_L_E_T_'
      Origin = 'D_E_L_E_T_'
      Size = 2
    end
    object _da1DA1_OLDC: TStringField
      FieldName = 'DA1_OLDC'
      Origin = 'DA1_OLDC'
      Size = 50
    end
    object _da1visual_cli: TStringField
      FieldName = 'visual_cli'
      Origin = 'visual_cli'
      Size = 200
    end
    object _da1DA1_PRCVEN2: TSingleField
      FieldName = 'DA1_PRCVEN2'
      Origin = 'DA1_PRCVEN2'
    end
    object _da1DA1_PRCVEN3: TSingleField
      FieldName = 'DA1_PRCVEN3'
      Origin = 'DA1_PRCVEN3'
    end
    object _da1DA1_AVISTA: TSingleField
      FieldName = 'DA1_AVISTA'
      Origin = 'DA1_AVISTA'
    end
    object _da1DA1_CUSTO: TSingleField
      FieldName = 'DA1_CUSTO'
      Origin = 'DA1_CUSTO'
    end
  end
  object IdCompressorZLib1: TIdCompressorZLib
    Left = 712
    Top = 256
  end
  object transfer: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'tr'
    RemoteServer = DSM
    Left = 297
    Top = 40
    object transfervisual_cli: TStringField
      FieldName = 'visual_cli'
      Size = 200
    end
    object transfertabela: TStringField
      FieldName = 'tabela'
      Size = 200
    end
    object transferid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object transferdados: TBlobField
      FieldName = 'dados'
    end
  end
  object _sa1: TClientDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = DSM
    Left = 784
    Top = 480
  end
  object FDTable1: TFDTable
    Connection = FdCon
    Left = 456
    Top = 88
  end
  object conf: TFDQuery
    Connection = FdCon
    FetchOptions.AssignedValues = [evRecordCountMode]
    FetchOptions.RecordCountMode = cmTotal
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amNonBlocking
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvCountUpdatedRecords, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.RefreshMode = rmAll
    UpdateOptions.CountUpdatedRecords = False
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    SQL.Strings = (
      'SELECT * FROM conf')
    Left = 152
    Top = 544
    object confid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object confbloqueio_regra: TBooleanField
      FieldName = 'bloqueio_regra'
      Origin = 'bloqueio_regra'
    end
    object conflogin_automatico: TBooleanField
      FieldName = 'login_automatico'
      Origin = 'login_automatico'
    end
    object confassinatura_obrigatoria: TBooleanField
      FieldName = 'assinatura_obrigatoria'
      Origin = 'assinatura_obrigatoria'
    end
    object confcontrola_rotas: TBooleanField
      FieldName = 'controla_rotas'
      Origin = 'controla_rotas'
    end
    object confcheckin_obrigatorio: TBooleanField
      FieldName = 'checkin_obrigatorio'
      Origin = 'checkin_obrigatorio'
    end
  end
  object auxSC6: TFDQuery
    AfterPost = auxSC6AfterPost
    Connection = FdCon
    FetchOptions.AssignedValues = [evRecordCountMode]
    FetchOptions.RecordCountMode = cmTotal
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amNonBlocking
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvCountUpdatedRecords, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.RefreshMode = rmAll
    UpdateOptions.CountUpdatedRecords = False
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    Left = 200
    Top = 544
    object auxSC6PESO: TFloatField
      FieldName = 'PESO'
    end
    object auxSC6MEDIO: TFloatField
      FieldName = 'MEDIO'
    end
  end
  object padrao: TFDQuery
    Connection = FdCon
    FetchOptions.AssignedValues = [evRecordCountMode]
    FetchOptions.RecordCountMode = cmTotal
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amNonBlocking
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvCountUpdatedRecords, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.RefreshMode = rmAll
    UpdateOptions.CountUpdatedRecords = False
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    SQL.Strings = (
      'Select * from REGRA')
    Left = 328
    Top = 544
    object padraoCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 250
    end
    object padraoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 2
    end
    object padraoVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object padraoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
    end
    object padraoCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 50
    end
  end
  object cSC5: TFDQuery
    BeforePost = SC5BeforePost
    Connection = FdCon
    FetchOptions.AssignedValues = [evRecordCountMode]
    FetchOptions.RecordCountMode = cmTotal
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amNonBlocking
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvCountUpdatedRecords, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.RefreshMode = rmAll
    UpdateOptions.CountUpdatedRecords = False
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    SQL.Strings = (
      'SELECT * FROM SC5010')
    Left = 480
    Top = 528
    object StringField5: TStringField
      FieldName = 'c5_num'
      Origin = 'c5_num'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 10
    end
    object StringField6: TStringField
      FieldName = 'c5_filial'
      Origin = 'c5_filial'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 10
    end
    object StringField7: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_zzrem'
      Origin = 'c5_zzrem'
      Size = 9
    end
    object StringField8: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_tipo'
      Origin = 'c5_tipo'
      Size = 10
    end
    object StringField9: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 20
      FieldName = 'c5_cliente'
      Origin = 'c5_cliente'
    end
    object StringField10: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_lojacli'
      Origin = 'c5_lojacli'
      Size = 10
    end
    object StringField11: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_client'
      Origin = 'c5_client'
      Size = 10
    end
    object StringField12: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_lojaent'
      Origin = 'c5_lojaent'
      Size = 10
    end
    object StringField13: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_vend5'
      Origin = 'c5_vend5'
      Size = 10
    end
    object FloatField1: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_comis5'
      Origin = 'c5_comis5'
    end
    object FloatField2: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_desc1'
      Origin = 'c5_desc1'
    end
    object FloatField3: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_desc2'
      Origin = 'c5_desc2'
    end
    object FloatField4: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_desc3'
      Origin = 'c5_desc3'
    end
    object FloatField5: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_desc4'
      Origin = 'c5_desc4'
    end
    object StringField14: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_banco'
      Origin = 'c5_banco'
      Size = 10
    end
    object FloatField6: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_descfi'
      Origin = 'c5_descfi'
    end
    object StringField15: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_emissao'
      Origin = 'c5_emissao'
      Size = 8
    end
    object StringField16: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_cotacao'
      Origin = 'c5_cotacao'
      Size = 10
    end
    object FloatField7: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_parc1'
      Origin = 'c5_parc1'
    end
    object StringField17: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_data1'
      Origin = 'c5_data1'
      Size = 10
    end
    object FloatField8: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_parc2'
      Origin = 'c5_parc2'
    end
    object StringField18: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_data2'
      Origin = 'c5_data2'
      Size = 10
    end
    object FloatField9: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_parc3'
      Origin = 'c5_parc3'
    end
    object StringField19: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_data3'
      Origin = 'c5_data3'
      Size = 10
    end
    object FloatField10: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_parc4'
      Origin = 'c5_parc4'
    end
    object StringField20: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_data4'
      Origin = 'c5_data4'
      Size = 10
    end
    object StringField21: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_tiplib'
      Origin = 'c5_tiplib'
      Size = 10
    end
    object StringField22: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_tpfrete'
      Origin = 'c5_tpfrete'
      Size = 10
    end
    object StringField23: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_transp'
      Origin = 'c5_transp'
      Size = 10
    end
    object StringField24: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_tipocli'
      Origin = 'c5_tipocli'
      Size = 10
    end
    object StringField25: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_condpag'
      Origin = 'c5_condpag'
      Size = 10
    end
    object StringField26: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_tabela'
      Origin = 'c5_tabela'
      Size = 10
    end
    object StringField27: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_vend1'
      Origin = 'c5_vend1'
      Size = 10
    end
    object FloatField11: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_comis1'
      Origin = 'c5_comis1'
    end
    object StringField28: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_vend2'
      Origin = 'c5_vend2'
      Size = 10
    end
    object FloatField12: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_comis2'
      Origin = 'c5_comis2'
    end
    object StringField29: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_vend3'
      Origin = 'c5_vend3'
      Size = 10
    end
    object FloatField13: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_comis3'
      Origin = 'c5_comis3'
    end
    object StringField30: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_vend4'
      Origin = 'c5_vend4'
      Size = 10
    end
    object FloatField14: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_comis4'
      Origin = 'c5_comis4'
    end
    object FloatField15: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_frete'
      Origin = 'c5_frete'
    end
    object FloatField16: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_seguro'
      Origin = 'c5_seguro'
    end
    object FloatField17: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_despesa'
      Origin = 'c5_despesa'
    end
    object FloatField18: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_fretaut'
      Origin = 'c5_fretaut'
    end
    object StringField31: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_reajust'
      Origin = 'c5_reajust'
      Size = 10
    end
    object FloatField19: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_moeda'
      Origin = 'c5_moeda'
    end
    object FloatField20: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_pesol'
      Origin = 'c5_pesol'
    end
    object FloatField21: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_pbruto'
      Origin = 'c5_pbruto'
    end
    object FloatField22: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_reimp'
      Origin = 'c5_reimp'
    end
    object StringField32: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_redesp'
      Origin = 'c5_redesp'
      Size = 10
    end
    object FloatField23: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_volume1'
      Origin = 'c5_volume1'
      currency = True
    end
    object FloatField24: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_volume2'
      Origin = 'c5_volume2'
    end
    object FloatField25: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_volume3'
      Origin = 'c5_volume3'
    end
    object FloatField26: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_volume4'
      Origin = 'c5_volume4'
    end
    object StringField33: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_especi1'
      Origin = 'c5_especi1'
      Size = 10
    end
    object StringField34: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_especi2'
      Origin = 'c5_especi2'
      Size = 10
    end
    object StringField35: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_especi3'
      Origin = 'c5_especi3'
      Size = 10
    end
    object StringField36: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_especi4'
      Origin = 'c5_especi4'
      Size = 10
    end
    object FloatField27: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_acrsfin'
      Origin = 'c5_acrsfin'
    end
    object StringField37: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_mena'
      Origin = 'c5_mena'
      Size = 500
    end
    object StringField38: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_menpad'
      Origin = 'c5_menpad'
      Size = 10
    end
    object StringField39: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_inciss'
      Origin = 'c5_inciss'
      Size = 10
    end
    object StringField40: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_liberok'
      Origin = 'c5_liberok'
      Size = 10
    end
    object StringField41: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_ok'
      Origin = 'c5_ok'
      Size = 10
    end
    object StringField42: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_a'
      Origin = 'c5_a'
      Size = 10
    end
    object StringField43: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_serie'
      Origin = 'c5_serie'
      Size = 10
    end
    object StringField44: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_kitrep'
      Origin = 'c5_kitrep'
      Size = 10
    end
    object StringField45: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_os'
      Origin = 'c5_os'
      Size = 10
    end
    object FloatField28: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_descont'
      Origin = 'c5_descont'
    end
    object StringField46: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_pedexp'
      Origin = 'c5_pedexp'
    end
    object FloatField29: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_txmoeda'
      Origin = 'c5_txmoeda'
    end
    object StringField47: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_tpcarga'
      Origin = 'c5_tpcarga'
      Size = 10
    end
    object FloatField30: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_pdescab'
      Origin = 'c5_pdescab'
    end
    object StringField48: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_blq'
      Origin = 'c5_blq'
      Size = 10
    end
    object StringField49: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_forniss'
      Origin = 'c5_forniss'
      Size = 10
    end
    object StringField50: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_contra'
      Origin = 'c5_contra'
      Size = 10
    end
    object IntegerField1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'r_e_c_n_o_'
      Origin = 'r_e_c_n_o_'
    end
    object IntegerField2: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'r_e_c_d_e_l_'
      Origin = 'r_e_c_d_e_l_'
    end
    object StringField51: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'd_e_l_e_t_'
      Origin = 'd_e_l_e_t_'
      Size = 1
    end
    object StringField52: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_zznum'
      Origin = 'c5_zznum'
      Size = 10
    end
    object StringField53: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_zznomec'
      Origin = 'c5_zznomec'
      Size = 50
    end
    object StringField54: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_zznomev'
      Origin = 'c5_zznomev'
      Size = 50
    end
    object FloatField31: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_zzgrup1'
      Origin = 'c5_zzgrup1'
    end
    object FloatField32: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_zzgrup2'
      Origin = 'c5_zzgrup2'
    end
    object StringField55: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_numorg'
      Origin = 'c5_numorg'
      Size = 10
    end
    object StringField56: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_zztpcom'
      Origin = 'c5_zztpcom'
      Size = 1
    end
    object StringField57: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_zzfatu'
      Origin = 'c5_zzfatu'
      Size = 1
    end
    object StringField58: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_zzdepto'
      Origin = 'c5_zzdepto'
      Size = 100
    end
    object StringField59: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_zzcondpag'
      Origin = 'c5_zzcondpag'
      Size = 10
    end
    object MemoField1: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'c5_mennota'
      Origin = 'c5_mennota'
      BlobType = ftMemo
    end
    object FloatField33: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c5_mo'
      Origin = 'c5_mo'
      currency = True
    end
    object StringField60: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_placa'
      Origin = 'c5_placa'
      Size = 100
    end
    object StringField61: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_saida'
      Origin = 'c5_saida'
    end
    object StringField62: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_prefixo'
      Origin = 'c5_prefixo'
      Size = 200
    end
    object StringField63: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c5_sinistro'
      Origin = 'c5_sinistro'
      Size = 250
    end
  end
  object cSC6: TFDQuery
    BeforePost = SC6BeforePost
    IndexesActive = False
    Connection = FdCon
    FetchOptions.AssignedValues = [evRecordCountMode]
    FetchOptions.RecordCountMode = cmTotal
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amNonBlocking
    UpdateOptions.AssignedValues = [uvUpdateMode, uvLockWait, uvRefreshMode, uvCountUpdatedRecords, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.RefreshMode = rmAll
    UpdateOptions.CountUpdatedRecords = False
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    SQL.Strings = (
      'SELECT * FROM SC6010')
    Left = 536
    Top = 528
    object StringField64: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_op'
      LookupDataSet = _aux
      Origin = 'c6_op'
      Size = 10
    end
    object StringField65: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_barra'
      Origin = 'c6_barra'
      Size = 15
    end
    object StringField66: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_ok'
      Origin = 'c6_ok'
      Size = 10
    end
    object StringField67: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_nfori'
      Origin = 'c6_nfori'
      Size = 10
    end
    object StringField68: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_seriori'
      Origin = 'c6_seriori'
      Size = 10
    end
    object StringField69: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_itemori'
      Origin = 'c6_itemori'
      Size = 10
    end
    object FloatField34: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_ipidev'
      Origin = 'c6_ipidev'
    end
    object StringField70: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_identb6'
      Origin = 'c6_identb6'
      Size = 10
    end
    object StringField71: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_blq'
      Origin = 'c6_blq'
      Size = 10
    end
    object FloatField35: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_picmret'
      Origin = 'c6_picmret'
    end
    object StringField72: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_codiss'
      Origin = 'c6_codiss'
      Size = 10
    end
    object StringField73: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_grade'
      Origin = 'c6_grade'
      Size = 10
    end
    object StringField74: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_itemgrd'
      Origin = 'c6_itemgrd'
      Size = 10
    end
    object StringField75: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_lotectl'
      Origin = 'c6_lotectl'
      Size = 10
    end
    object StringField76: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_numlote'
      Origin = 'c6_numlote'
      Size = 10
    end
    object StringField77: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_dtvalid'
      Origin = 'c6_dtvalid'
      Size = 10
    end
    object StringField78: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_numorc'
      Origin = 'c6_numorc'
      Size = 10
    end
    object StringField79: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_chassi'
      Origin = 'c6_chassi'
      Size = 17
    end
    object StringField80: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_opc'
      Origin = 'c6_opc'
      Size = 80
    end
    object StringField81: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_localiz'
      Origin = 'c6_localiz'
      Size = 15
    end
    object StringField82: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_numseri'
      Origin = 'c6_numseri'
    end
    object StringField83: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_numop'
      Origin = 'c6_numop'
      Size = 10
    end
    object StringField84: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_itemop'
      Origin = 'c6_itemop'
      Size = 10
    end
    object StringField85: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_clasfis'
      Origin = 'c6_clasfis'
      Size = 10
    end
    object FloatField36: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_qtdrese'
      Origin = 'c6_qtdrese'
    end
    object StringField86: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_contrat'
      Origin = 'c6_contrat'
      Size = 10
    end
    object StringField87: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_numos'
      Origin = 'c6_numos'
      Size = 10
    end
    object StringField88: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_numosfa'
      Origin = 'c6_numosfa'
      Size = 10
    end
    object StringField89: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_codfab'
      Origin = 'c6_codfab'
      Size = 10
    end
    object StringField90: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_lojafa'
      Origin = 'c6_lojafa'
      Size = 10
    end
    object StringField91: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_itemcon'
      Origin = 'c6_itemcon'
      Size = 10
    end
    object StringField92: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_tpop'
      Origin = 'c6_tpop'
      Size = 10
    end
    object StringField93: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_revisao'
      Origin = 'c6_revisao'
      Size = 10
    end
    object StringField94: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_servic'
      Origin = 'c6_servic'
      Size = 10
    end
    object StringField95: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_endpad'
      Origin = 'c6_endpad'
      Size = 15
    end
    object StringField96: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_tpestr'
      Origin = 'c6_tpestr'
      Size = 10
    end
    object StringField97: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_contrt'
      Origin = 'c6_contrt'
      Size = 15
    end
    object StringField98: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_tpcontr'
      Origin = 'c6_tpcontr'
      Size = 10
    end
    object StringField99: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_itcontr'
      Origin = 'c6_itcontr'
      Size = 10
    end
    object StringField100: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_geroupv'
      Origin = 'c6_geroupv'
      Size = 10
    end
    object StringField101: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_projpms'
      Origin = 'c6_projpms'
      Size = 10
    end
    object StringField102: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_edtpms'
      Origin = 'c6_edtpms'
      Size = 12
    end
    object StringField103: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_taskpms'
      Origin = 'c6_taskpms'
      Size = 12
    end
    object StringField104: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_trt'
      Origin = 'c6_trt'
      Size = 10
    end
    object FloatField37: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_qtdemp'
      Origin = 'c6_qtdemp'
    end
    object FloatField38: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_qtdemp2'
      Origin = 'c6_qtdemp2'
    end
    object StringField105: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_projet'
      Origin = 'c6_projet'
      Size = 10
    end
    object StringField106: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_itproj'
      Origin = 'c6_itproj'
      Size = 10
    end
    object FloatField39: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_potenci'
      Origin = 'c6_potenci'
    end
    object StringField107: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_licita'
      Origin = 'c6_licita'
      Size = 10
    end
    object StringField108: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_regwms'
      Origin = 'c6_regwms'
      Size = 10
    end
    object StringField109: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_mopc'
      Origin = 'c6_mopc'
      Size = 80
    end
    object StringField110: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_numcp'
      Origin = 'c6_numcp'
      Size = 10
    end
    object StringField111: TStringField
      FieldName = 'c6_filial'
      Origin = 'c6_filial'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object StringField112: TStringField
      FieldName = 'c6_item'
      Origin = 'c6_item'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object StringField113: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_produto'
      Origin = 'c6_produto'
      OnChange = SC6c6_produtoChange
    end
    object StringField114: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_um'
      Origin = 'c6_um'
      Size = 10
    end
    object FloatField40: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_qtdven'
      Origin = 'c6_qtdven'
      OnChange = SC6c6_qtdvenChange
    end
    object FloatField41: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_prcven'
      Origin = 'c6_prcven'
      currency = True
    end
    object FloatField42: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_valor'
      Origin = 'c6_valor'
      currency = True
    end
    object FloatField43: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_qtdlib'
      Origin = 'c6_qtdlib'
    end
    object FloatField44: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_qtdlib2'
      Origin = 'c6_qtdlib2'
    end
    object StringField115: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_segum'
      Origin = 'c6_segum'
      Size = 10
    end
    object FloatField45: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_sldalib'
      Origin = 'c6_sldalib'
    end
    object StringField116: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_oper'
      Origin = 'c6_oper'
      Size = 10
    end
    object StringField117: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_tes'
      Origin = 'c6_tes'
      Size = 10
    end
    object FloatField46: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_unsven'
      Origin = 'c6_unsven'
    end
    object StringField118: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_local'
      Origin = 'c6_local'
      Size = 10
    end
    object StringField119: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_cf'
      Origin = 'c6_cf'
      Size = 10
    end
    object FloatField47: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_qtdent'
      Origin = 'c6_qtdent'
    end
    object FloatField48: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_qtdent2'
      Origin = 'c6_qtdent2'
    end
    object StringField120: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_cli'
      Origin = 'c6_cli'
      Size = 10
    end
    object FloatField49: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_descont'
      Origin = 'c6_descont'
      OnChange = SC6c6_descontChange
    end
    object FloatField50: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_valdesc'
      Origin = 'c6_valdesc'
      currency = True
    end
    object StringField121: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_entreg'
      Origin = 'c6_entreg'
      Size = 10
    end
    object StringField122: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_la'
      Origin = 'c6_la'
      Size = 10
    end
    object StringField123: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_loja'
      Origin = 'c6_loja'
      Size = 10
    end
    object StringField124: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_nota'
      Origin = 'c6_nota'
      Size = 10
    end
    object StringField125: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_serie'
      Origin = 'c6_serie'
      Size = 10
    end
    object StringField126: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_datfat'
      Origin = 'c6_datfat'
      Size = 10
    end
    object StringField127: TStringField
      FieldName = 'c6_num'
      Origin = 'c6_num'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object FloatField51: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_comis1'
      Origin = 'c6_comis1'
    end
    object FloatField52: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_comis2'
      Origin = 'c6_comis2'
    end
    object FloatField53: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_comis3'
      Origin = 'c6_comis3'
    end
    object FloatField54: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_comis4'
      Origin = 'c6_comis4'
    end
    object FloatField55: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_comis5'
      Origin = 'c6_comis5'
    end
    object StringField128: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_pedcli'
      Origin = 'c6_pedcli'
      Size = 10
    end
    object StringField129: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_descri'
      Origin = 'c6_descri'
      Size = 150
    end
    object FloatField56: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'c6_prunit'
      Origin = 'c6_prunit'
    end
    object StringField130: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_bloquei'
      Origin = 'c6_bloquei'
      Size = 10
    end
    object StringField131: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_reserva'
      Origin = 'c6_reserva'
      Size = 10
    end
    object IntegerField3: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'r_e_c_n_o_'
      Origin = 'r_e_c_n_o_'
    end
    object IntegerField4: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'r_e_c_d_e_l_'
      Origin = 'r_e_c_d_e_l_'
    end
    object StringField132: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'd_e_l_e_t_'
      Origin = 'd_e_l_e_t_'
      Size = 1
    end
    object StringField133: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c6_referencia'
      Origin = 'c6_referencia'
      Size = 50
    end
  end
end
