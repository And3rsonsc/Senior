unit uBotao;

interface

uses
  uComponente;

type

  TBotao = class(TComponente)

    public
    Constructor Create(vX, vY, vAltura, vLargura : integer);
    Destructor  Destroy; Override;
    procedure Redimensionar(vAltura, vLargura : integer; pAltura, pLargura : real); override; // valor de referência de aumento do form
  end;

implementation

{ TBotao }

constructor TBotao.Create(vX, vY, vAltura, vLargura: integer);
begin
    self.X := vX;
    self.y := vY;
    self.Altura := vAltura;
    self.Largura := vLargura;
end;

destructor TBotao.Destroy;
begin
  inherited;
end;



procedure TBotao.Redimensionar(vAltura, vLargura: integer; pAltura,     //valor de aumento do frame e proporsão de aumento em %
  pLargura: real);
begin
  self.Largura := trunc(self.Largura * ((pLargura/100) + 1 ));
  self.X := trunc(self.X + valtura/2);
  self.Y := trunc(self.Y + vlargura/2);
end;

end.

