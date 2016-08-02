
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.6.1055.0
//  Copyright (c) Microsoft Corporation.  All rights reserved.



// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly extern System.Web
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 4:0:0:0
}
.assembly TestIISHandler
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
  .custom instance void [mscorlib]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 0E 54 65 73 74 49 49 53 48 61 6E 64 6C 65   // ...TestIISHandle
                                                                                              72 00 00 )                                        // r..
  .custom instance void [mscorlib]System.Reflection.AssemblyDescriptionAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 0E 54 65 73 74 49 49 53 48 61 6E 64 6C 65   // ...TestIISHandle
                                                                                                72 00 00 )                                        // r..
  .custom instance void [mscorlib]System.Reflection.AssemblyCopyrightAttribute::.ctor(string) = ( 01 00 12 43 6F 70 79 72 69 67 68 74 20 C2 A9 20   // ...Copyright .. 
                                                                                                  20 32 30 31 36 00 00 )                            //  2016..
  .custom instance void [mscorlib]System.Reflection.AssemblyTrademarkAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.ComVisibleAttribute::.ctor(bool) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 63 34 31 63 35 62 64 66 2D 33 66 64 30   // ..$c41c5bdf-3fd0
                                                                                                  2D 34 30 32 65 2D 39 63 32 62 2D 65 33 32 30 61   // -402e-9c2b-e320a
                                                                                                  37 30 32 32 66 37 62 00 00 )                      // 7022f7b..
  .custom instance void [mscorlib]System.Reflection.AssemblyFileVersionAttribute::.ctor(string) = ( 01 00 07 31 2E 30 2E 30 2E 30 00 00 )             // ...1.0.0.0..
  .custom instance void [mscorlib]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 1A 2E 4E 45 54 46 72 61 6D 65 77 6F 72 6B   // ....NETFramework
                                                                                                        2C 56 65 72 73 69 6F 6E 3D 76 34 2E 35 01 00 54   // ,Version=v4.5..T
                                                                                                        0E 14 46 72 61 6D 65 77 6F 72 6B 44 69 73 70 6C   // ..FrameworkDispl
                                                                                                        61 79 4E 61 6D 65 12 2E 4E 45 54 20 46 72 61 6D   // ayName..NET Fram
                                                                                                        65 77 6F 72 6B 20 34 2E 35 )                      // ework 4.5
  .hash algorithm 0x00008004
  .ver 1:0:0:0
}
.module TestIISHandler.dll
// MVID: {42186E74-C04E-4BD7-A5ED-DE6C75413FD1}
.imagebase 0x10000000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x00E80000


// =============== CLASS MEMBERS DECLARATION ===================

.class public auto ansi beforefieldinit TestIISHandler.BadIISHandler
       extends [mscorlib]System.Object
       implements [System.Web]System.Web.IHttpHandler
{
  .method public hidebysig newslot virtual final 
          instance void  ProcessRequest(class [System.Web]System.Web.HttpContext context) cil managed
  {
    // Code size       30 (0x1e)
    .maxstack  1
    .try
    {
      .try
      {
        IL_0000:  ldarg.1
        IL_0001:  callvirt   instance class [System.Web]System.Web.HttpResponse [System.Web]System.Web.HttpContext::get_Response()
        IL_0006:  callvirt   instance void [System.Web]System.Web.HttpResponse::End()
        IL_000b:  leave.s    IL_0010

      }  // end .try
      catch [mscorlib]System.Exception 
      {
        IL_000d:  pop
        IL_000e:  leave.s    IL_001d

      }  // end handler
      IL_0010:  leave.s    IL_001d

    }  // end .try
    finally
    {
      IL_0012:  ldstr      "Inside finally block"
      IL_0017:  call       void [mscorlib]System.Console::WriteLine(string)
      IL_001c:  endfinally
    }  // end handler
    IL_001d:  ret
  } // end of method BadIISHandler::ProcessRequest

  .method public hidebysig newslot specialname virtual final 
          instance bool  get_IsReusable() cil managed
  {
    // Code size       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  ret
  } // end of method BadIISHandler::get_IsReusable

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method BadIISHandler::.ctor

  .property instance bool IsReusable()
  {
    .get instance bool TestIISHandler.BadIISHandler::get_IsReusable()
  } // end of property BadIISHandler::IsReusable
} // end of class TestIISHandler.BadIISHandler

.class public auto ansi beforefieldinit TestIISHandler.GoodIISHandler
       extends [mscorlib]System.Object
       implements [System.Web]System.Web.IHttpHandler
{
  .method public hidebysig newslot virtual final 
          instance void  ProcessRequest(class [System.Web]System.Web.HttpContext context) cil managed
  {
    // Code size       30 (0x1e)
    .maxstack  1
    .try
    {
      .try
      {
        IL_0000:  ldarg.1
        IL_0001:  callvirt   instance class [System.Web]System.Web.HttpResponse [System.Web]System.Web.HttpContext::get_Response()
        IL_0006:  callvirt   instance void [System.Web]System.Web.HttpResponse::End()
        IL_000b:  leave.s    IL_0010

      }  // end .try
      catch [mscorlib]System.Exception 
      {
        IL_000d:  pop
        IL_000e:  leave.s    IL_0010

      }  // end handler
      IL_0010:  leave.s    IL_001d

    }  // end .try
    finally
    {
      IL_0012:  ldstr      "Inside finally block"
      IL_0017:  call       void [mscorlib]System.Console::WriteLine(string)
      IL_001c:  endfinally
    }  // end handler
    IL_001d:  ret
  } // end of method GoodIISHandler::ProcessRequest

  .method public hidebysig newslot specialname virtual final 
          instance bool  get_IsReusable() cil managed
  {
    // Code size       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  ret
  } // end of method GoodIISHandler::get_IsReusable

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method GoodIISHandler::.ctor

  .property instance bool IsReusable()
  {
    .get instance bool TestIISHandler.GoodIISHandler::get_IsReusable()
  } // end of property GoodIISHandler::IsReusable
} // end of class TestIISHandler.GoodIISHandler


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
