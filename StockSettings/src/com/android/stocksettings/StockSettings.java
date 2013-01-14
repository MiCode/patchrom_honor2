/*
 * Copyright (C) 2010 The Android Open Source Project
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

package com.android.stocksettings;

import android.app.ActionBar;
import android.os.Bundle;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.preference.PreferenceActivity;
import android.view.MenuItem;
import android.os.SystemProperties;

public class StockSettings extends PreferenceActivity {
    private static final String LOG_TAG = "StockSettings";
    private static final String MAIN_STORAGE_SET = "main_storage_set";
    private static final String MAIN_STORAGE_PROPERTY = "persist.sys.main_storage";
    private static final String EXTERNAL_STORAGE = "external_sd";
    private static final String INTERNAL_STORAGE = "internal_sd";
    private ListPreference mMainStorage;

    public void onCreate(Bundle savedInstanceState) {
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            actionBar.setHomeButtonEnabled(true);
        }
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.stock_settings);
        mMainStorage = (ListPreference) findPreference(MAIN_STORAGE_SET);
        mMainStorage.setOnPreferenceChangeListener(new OnPreferenceChangeListener() {
            @Override
            public boolean onPreferenceChange(Preference preference, Object newValue) {
                switch (Integer.parseInt((String) newValue)) {
                    case 0:
                        preference.setSummary(R.string.internal_sdcard);
                        SystemProperties.set(MAIN_STORAGE_PROPERTY, INTERNAL_STORAGE);
                        break;

                    case 1:
                        preference.setSummary(R.string.external_sdcard);
                        SystemProperties.set(MAIN_STORAGE_PROPERTY, EXTERNAL_STORAGE);
                        break;

                    default:
                        break;
                }
                return true;
            }
        });

        if (INTERNAL_STORAGE.equals(SystemProperties.get(MAIN_STORAGE_PROPERTY, INTERNAL_STORAGE))) {
            mMainStorage.setDefaultValue(0);
            mMainStorage.setSummary(R.string.internal_sdcard);
        } else {
            mMainStorage.setDefaultValue(1);
            mMainStorage.setSummary(R.string.external_sdcard);
        }
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case android.R.id.home:
                finish();
                return true;

            default:
                return super.onOptionsItemSelected(item);
        }
    }

}
