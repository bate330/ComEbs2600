unit _Ebs2600ComPrinterReceivingThread;

interface

uses
  System.SysUtils, System.Classes, mpComPort;

type
  TReceivingThread = class(TThread)
  private
    FPointerToReceivingThread: Pointer;
  protected

  public
    procedure Execute; override;
    property PointerToReceivingThread: Pointer read FPointerToReceivingThread write FPointerToReceivingThread;
  end;

implementation

{ Ebs2600ComPrinter }

procedure TReceivingThread.Execute;
begin
  FreeOnTerminate := True;
 { if Assigned(PointerToReceivingThread^.OnDataAvailable) then
  Synchronize( procedure
    begin
      PointerToReceivingThread^.OnDataAvailable(Self)
    end
    );     }
end;
//==============================================================================


end.
