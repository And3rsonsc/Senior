unit uLabel;

interface

uses
  uComponente;

type

  TLabels = class(TComponente)   //precisei alterar o nome do tipo para que não desse erro na hora de criação do objeto
  public
    procedure Redimensionar(vAltura, vLargura : integer; pAltura, pLargura : real); override;// valor de referência de aumento do form
    Constructor Create(vX, vY, vAltura, vLargura : integer);
    Destructor  Destroy; Override;
  end;

implementation

{ TLabel }

constructor TLabels.Create(vX, vY, vAltura, vLargura : integer);
begin
    self.X := vX;
    self.y := vY;
    self.Altura := vAltura;
    self.Largura := vLargura;
end;

destructor TLabels.Destroy;
begin

  inherited;
end;

procedure TLabels.Redimensionar(vAltura, vLargura : integer; pAltura, pLargura : real);   //valor de aumento do frame e proporsão de aumento em %
begin
  self.X := trunc(self.X + valtura/2);
  self.Y := trunc(self.Y + vlargura/2);
end;

end.

