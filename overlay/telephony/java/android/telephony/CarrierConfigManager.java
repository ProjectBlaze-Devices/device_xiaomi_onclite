/*
 * Copyright (C) 2015 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package android.telephony;

import android.Manifest;
import android.annotation.IntDef;
import android.annotation.NonNull;
import android.annotation.Nullable;
import android.annotation.RequiresPermission;
import android.annotation.SuppressLint;
import android.annotation.SystemApi;
import android.annotation.SystemService;
import android.compat.annotation.UnsupportedAppUsage;
import android.content.ComponentName;
import android.content.Context;
import android.net.ipsec.ike.SaProposal;
import android.os.Build;
import android.os.PersistableBundle;
import android.os.RemoteException;
import android.service.carrier.CarrierService;
import android.telecom.TelecomManager;
import android.telephony.data.DataCallResponse;
import android.telephony.gba.TlsParams;
import android.telephony.gba.UaSecurityProtocolIdentifier;
import android.telephony.ims.ImsReasonInfo;
import android.telephony.ims.ImsRegistrationAttributes;
import android.telephony.ims.ImsSsData;
import android.telephony.ims.RcsUceAdapter;
import android.telephony.ims.feature.MmTelFeature;
import android.telephony.ims.feature.RcsFeature;

import com.android.internal.telephony.ICarrierConfigLoader;
import com.android.telephony.Rlog;

import java.util.concurrent.TimeUnit;

/**
 * Provides access to telephony configuration values that are carrier-specific.
 */
@SystemService(Context.CARRIER_CONFIG_SERVICE)
public class CarrierConfigManager {
    private final static String TAG = "CarrierConfigManager";

    /**
     * Boolean indicating if LTE+ icon should be shown if available.
     */
    public static final String KEY_HIDE_LTE_PLUS_DATA_ICON_BOOL =
            "hide_lte_plus_data_icon_bool";

    /**
     * The combined channel bandwidth threshold (non-inclusive) in KHz required to display the
     * LTE+ data icon. It is 20000 by default, meaning the LTE+ icon will be shown if the device is
     * using carrier aggregation and the combined channel bandwidth is strictly greater than 20 MHz.
     * @hide
     */
    public static final String KEY_LTE_PLUS_THRESHOLD_BANDWIDTH_KHZ_INT =
            "lte_plus_threshold_bandwidth_khz_int";

    /** The default value for every variable. */
    private final static PersistableBundle sDefaults;

    static {

        sDefaults.putBoolean(KEY_HIDE_LTE_PLUS_DATA_ICON_BOOL, false);
        sDefaults.putInt(KEY_LTE_PLUS_THRESHOLD_BANDWIDTH_KHZ_INT, 1000);

	}
}
