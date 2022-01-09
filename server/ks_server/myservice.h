
#ifndef __MYSERVICE_H__
#define __MYSERVICE_H__

#include "serviceman.h"


class CServer;


class CMyService : public CService
{
          BOOL b_started;
          CServer *p_obj;

  public:
          CMyService();
          ~CMyService();
          
          const char* GetName() const { return "KagamiShellServer"; }
          const char* GetDisplayName() const { return "KagamiShell Server"; }
          BOOL IsInteractive() const { return FALSE; }
          BOOL Start();
          BOOL Stop();
          BOOL IsExecuted() const;
};



#endif
