* Requires .NET Core 3.0 or later


do wwDotNetBridge
LOCAL loBridge as wwDotNetBridge
loBridge = CREATEOBJECT("wwDotnetCoreBridge")


? loBridge.GetStaticProperty("System.Runtime.InteropServices.RuntimeInformation","FrameworkDescription");


? "Network available " + TRANSFORM(loBridge.InvokeStaticMethod("System.Net.NetworkInformation.NetworkInterface",;
                              "GetIsNetworkAvailable"))
