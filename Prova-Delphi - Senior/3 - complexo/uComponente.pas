unit uComponente;

interface

type

  TComponente = class;

  TComponenteArray = array of TComponente;

  TComponente = class
  private
    FX: Integer;
    FY: Integer;
    FAltura: Integer;
    FLargura: Integer;
    FComponentes: TComponenteArray;
    procedure setX(const Value: Integer);
    procedure setY(const Value: Integer);
    procedure setaltura(const Value: Integer);
    procedure setLargura(const Value: Integer);
  public
    procedure AdicionaComponente(aComponente: TComponente); virtual;
    procedure RemoveComponente(aComponente: TComponente); virtual;
    procedure Redimensionar(vAltura, vLargura : integer; pAltura, pLargura : real); virtual; Abstract;
    property X : Integer read FX write setX;
    property Y : Integer read FY write setY;
    property Altura : Integer read FAltura write setaltura;
    property Largura : Integer read FLargura write setLargura;
    property Componentes: TComponenteArray read FComponentes write FComponentes;
  end;

implementation


procedure TComponente.AdicionaComponente(aComponente: TComponente);
begin
  SetLength(Fcomponentes, length(Fcomponentes) + 1);
  Fcomponentes[length(Fcomponentes) - 1]:= aComponente
end;

procedure TComponente.RemoveComponente(aComponente: TComponente);
var
  localizado : boolean;
  i : integer;
begin
   localizado := false;
   i := 0                   ;
   if length(Fcomponentes) <> 0 then
      begin
        repeat
          if localizado = true then
            begin
              Fcomponentes[i] := Fcomponentes[i + 1];
            end
            else
            begin
              if Fcomponentes[i] = aComponente then
                begin
                  localizado := true;
                  Fcomponentes[i] := Fcomponentes[i + 1];
                end;
            end;
            i := i + 1;
        until length(Fcomponentes) = i;
        Fcomponentes[i] := nil;
        SetLength(Fcomponentes, length(Fcomponentes) - 1);
      end;
end;

procedure TComponente.setaltura(const Value: Integer);
begin
  FAltura := Value;
end;

procedure TComponente.setLargura(const Value: Integer);
begin
  FLargura := Value;
end;

procedure TComponente.setX(const Value: Integer);
begin
  FX := Value;
end;

procedure TComponente.setY(const Value: Integer);
begin
  FY := Value;
end;

end.

