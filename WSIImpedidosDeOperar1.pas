
unit WSIImpedidosDeOperar1;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns,UDMConecta;

type

IImpedidosDeOperar = interface(IInvokable)
    ['{27976409-258C-D66F-6B38-F9466EE9D93A}']
    function ImpedidoDeOperar(const Cpf_Cnpj: WideString): Boolean; stdcall;
  end;

function GetIImpedidosDeOperar(UseWSDL: Boolean = System.False;
  Addr: string = ''; HTTPRIO: THTTPRIO = nil): IImpedidosDeOperar;

implementation

uses SysUtils;

function GetIImpedidosDeOperar(UseWSDL: Boolean; Addr: string;
  HTTPRIO: THTTPRIO): IImpedidosDeOperar;
const

   defWSDL = 'http://impedidosdeoperarhomologacao.bi.local/ImpedidosDeOperar.exe/wsdl/IImpedidosDeOperar';
   defURL  = 'http://impedidosdeoperarhomologacao.bi.local/ImpedidosDeOperar.exe/soap/IImpedidosDeOperar';
   defSvc  = 'IImpedidosDeOperarservice';
   defPrt  = 'IImpedidosDeOperarPort';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if  Udmconecta.DMConecta.Valida_Ambeinte then
   begin
     if UseWSDL then
        Addr := 'http://impedidosdeoperar.bi.local/ImpedidosDeOperar.exe/wsdl/IImpedidosDeOperar'
      else
        Addr := 'http://impedidosdeoperar.bi.local/ImpedidosDeOperar.exe/soap/IImpedidosDeOperar';
   end;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as IImpedidosDeOperar);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end
    else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;

initialization

InvRegistry.RegisterInterface(TypeInfo(IImpedidosDeOperar),
  'urn:ImpedidosDeOperarIntf-IImpedidosDeOperar', '');
InvRegistry.RegisterDefaultSOAPAction(TypeInfo(IImpedidosDeOperar),
  'urn:ImpedidosDeOperarIntf-IImpedidosDeOperar#ImpedidoDeOperar');

end.
