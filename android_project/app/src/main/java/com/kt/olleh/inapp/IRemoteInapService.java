package com.kt.olleh.inapp;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;

public interface IRemoteInapService extends IInterface {
    String getPhoneNumber() throws RemoteException;

    abstract class Stub extends Binder implements IRemoteInapService {
        private static final String DESCRIPTOR = "com.kt.olleh.inapp.IRemoteInapService";

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IRemoteInapService asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin != null && iin instanceof IRemoteInapService) {
                return (IRemoteInapService) iin;
            }
            return new Proxy(obj);
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        private static class Proxy implements IRemoteInapService {
            private final IBinder mRemote;

            Proxy(IBinder remote) {
                mRemote = remote;
            }

            @Override
            public IBinder asBinder() {
                return mRemote;
            }

            @Override
            public String getPhoneNumber() throws RemoteException {
                return null;
            }
        }
    }
}
