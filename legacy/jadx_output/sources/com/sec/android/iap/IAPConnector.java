package com.sec.android.iap;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.sec.android.iap.IAPServiceCallback;

/* JADX INFO: loaded from: classes.dex */
public interface IAPConnector extends IInterface {
    Bundle getItemList(int i, String str, String str2, int i2, int i3, String str3) throws RemoteException;

    Bundle getItemsInbox(String str, String str2, int i, int i2, String str3, String str4) throws RemoteException;

    Bundle init(int i) throws RemoteException;

    boolean requestCmd(IAPServiceCallback iAPServiceCallback, Bundle bundle) throws RemoteException;

    boolean unregisterCallback(IAPServiceCallback iAPServiceCallback) throws RemoteException;

    public static abstract class Stub extends Binder implements IAPConnector {
        private static final String DESCRIPTOR = "com.sec.android.iap.IAPConnector";
        static final int TRANSACTION_getItemList = 4;
        static final int TRANSACTION_getItemsInbox = 5;
        static final int TRANSACTION_init = 3;
        static final int TRANSACTION_requestCmd = 1;
        static final int TRANSACTION_unregisterCallback = 2;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IAPConnector asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin != null && (iin instanceof IAPConnector)) {
                return (IAPConnector) iin;
            }
            return new Proxy(obj);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            Bundle _arg1;
            switch (code) {
                case 1:
                    data.enforceInterface(DESCRIPTOR);
                    IAPServiceCallback _arg0 = IAPServiceCallback.Stub.asInterface(data.readStrongBinder());
                    if (data.readInt() != 0) {
                        _arg1 = (Bundle) Bundle.CREATOR.createFromParcel(data);
                    } else {
                        _arg1 = null;
                    }
                    boolean _result = requestCmd(_arg0, _arg1);
                    reply.writeNoException();
                    reply.writeInt(_result ? 1 : 0);
                    return true;
                case 2:
                    data.enforceInterface(DESCRIPTOR);
                    IAPServiceCallback _arg02 = IAPServiceCallback.Stub.asInterface(data.readStrongBinder());
                    boolean _result2 = unregisterCallback(_arg02);
                    reply.writeNoException();
                    reply.writeInt(_result2 ? 1 : 0);
                    return true;
                case 3:
                    data.enforceInterface(DESCRIPTOR);
                    int _arg03 = data.readInt();
                    Bundle _result3 = init(_arg03);
                    reply.writeNoException();
                    if (_result3 != null) {
                        reply.writeInt(1);
                        _result3.writeToParcel(reply, 1);
                        return true;
                    }
                    reply.writeInt(0);
                    return true;
                case 4:
                    data.enforceInterface(DESCRIPTOR);
                    int _arg04 = data.readInt();
                    String _arg12 = data.readString();
                    String _arg2 = data.readString();
                    int _arg3 = data.readInt();
                    int _arg4 = data.readInt();
                    String _arg5 = data.readString();
                    Bundle _result4 = getItemList(_arg04, _arg12, _arg2, _arg3, _arg4, _arg5);
                    reply.writeNoException();
                    if (_result4 != null) {
                        reply.writeInt(1);
                        _result4.writeToParcel(reply, 1);
                        return true;
                    }
                    reply.writeInt(0);
                    return true;
                case 5:
                    data.enforceInterface(DESCRIPTOR);
                    String _arg05 = data.readString();
                    String _arg13 = data.readString();
                    int _arg22 = data.readInt();
                    int _arg32 = data.readInt();
                    String _arg42 = data.readString();
                    String _arg52 = data.readString();
                    Bundle _result5 = getItemsInbox(_arg05, _arg13, _arg22, _arg32, _arg42, _arg52);
                    reply.writeNoException();
                    if (_result5 != null) {
                        reply.writeInt(1);
                        _result5.writeToParcel(reply, 1);
                        return true;
                    }
                    reply.writeInt(0);
                    return true;
                case 1598968902:
                    reply.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }

        private static class Proxy implements IAPConnector {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.sec.android.iap.IAPConnector
            public boolean requestCmd(IAPServiceCallback callback, Bundle bundle) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (bundle != null) {
                        _data.writeInt(1);
                        bundle.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    this.mRemote.transact(1, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readInt() != 0;
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.sec.android.iap.IAPConnector
            public boolean unregisterCallback(IAPServiceCallback callback) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    this.mRemote.transact(2, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readInt() != 0;
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.sec.android.iap.IAPConnector
            public Bundle init(int mode) throws RemoteException {
                Bundle _result;
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(mode);
                    this.mRemote.transact(3, _data, _reply, 0);
                    _reply.readException();
                    if (_reply.readInt() != 0) {
                        _result = (Bundle) Bundle.CREATOR.createFromParcel(_reply);
                    } else {
                        _result = null;
                    }
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.sec.android.iap.IAPConnector
            public Bundle getItemList(int mode, String packageName, String itemGroupId, int startNum, int endNum, String itemType) throws RemoteException {
                Bundle _result;
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(mode);
                    _data.writeString(packageName);
                    _data.writeString(itemGroupId);
                    _data.writeInt(startNum);
                    _data.writeInt(endNum);
                    _data.writeString(itemType);
                    this.mRemote.transact(4, _data, _reply, 0);
                    _reply.readException();
                    if (_reply.readInt() != 0) {
                        _result = (Bundle) Bundle.CREATOR.createFromParcel(_reply);
                    } else {
                        _result = null;
                    }
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.sec.android.iap.IAPConnector
            public Bundle getItemsInbox(String packageName, String itemGroupId, int startNum, int endNum, String startDate, String endDate) throws RemoteException {
                Bundle _result;
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeString(itemGroupId);
                    _data.writeInt(startNum);
                    _data.writeInt(endNum);
                    _data.writeString(startDate);
                    _data.writeString(endDate);
                    this.mRemote.transact(5, _data, _reply, 0);
                    _reply.readException();
                    if (_reply.readInt() != 0) {
                        _result = (Bundle) Bundle.CREATOR.createFromParcel(_reply);
                    } else {
                        _result = null;
                    }
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }
    }
}
