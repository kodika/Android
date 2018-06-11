//
//  AndroidBluetoothDevice.swift
//  PureSwift
//
//  Created by Alsey Coleman Miller on 3/21/18.
//

import Foundation
import Bluetooth
import java_swift

public extension Android.Bluetooth {
    
    public typealias Device = AndroidBluetoothDevice
}

public final class AndroidBluetoothDevice: JavaObject {
    
    public convenience init?( casting object: java_swift.JavaObject,
                              _ file: StaticString = #file,
                              _ line: Int = #line ) {
        
        self.init(javaObject: nil)
        
        object.withJavaObject {
            self.javaObject = $0
        }
    }
    
    public required init( javaObject: jobject? ) {
        super.init(javaObject: javaObject)
    }

    @_versioned
    internal func getAddress() -> String {
        
        var __locals = [jobject]()
        
        var __args = [jvalue](repeating: jvalue(), count: 1)
        
        let __return = JNIMethod.CallObjectMethod(object: javaObject,
                                                  methodName: "getAddress",
                                                  methodSig: "()Ljava/lang/String;",
                                                  methodCache: &JNICache.MethodID.getAddress,
                                                  args: &__args,
                                                  locals: &__locals)
        
        defer { JNI.DeleteLocalRef( __return ) }
        
        return String(javaObject: __return)
    }
    
    public var address: Bluetooth.Address {
        
        get { return Address(rawValue: getAddress())! }
    }
}

// MARK: - CONSTANTS

public extension Android.Bluetooth.Device {
    
    /// Broadcast Action: Indicates a low level (ACL) connection has been established with a remote device.
    internal static var ACTION_ACL_CONNECTED: String {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "ACTION_ACL_CONNECTED",
                fieldType: "Ljava/lang/String;",
                fieldCache: &JNICache.FieldID.ACTION_ACL_CONNECTED,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return String(__value)
        }
    }
    
    /// Broadcast Action: Indicates a low level (ACL) disconnection from a remote device.
    internal static var ACTION_ACL_DISCONNECTED: String {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "ACTION_ACL_DISCONNECTED",
                fieldType: "Ljava/lang/String;",
                fieldCache: &JNICache.FieldID.ACTION_ACL_DISCONNECTED,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return String(__value)
        }
    }
    
    /// Broadcast Action: Indicates that a low level (ACL) disconnection has been requested for a remote device, and it will soon be disconnected.
    internal static var ACTION_ACL_DISCONNECT_REQUESTED: String {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "ACTION_ACL_DISCONNECT_REQUESTED",
                fieldType: "Ljava/lang/String;",
                fieldCache: &JNICache.FieldID.ACTION_ACL_DISCONNECT_REQUESTED,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return String(__value)
        }
    }
    
    /// Broadcast Action: Indicates a change in the bond state of a remote device. For example, if a device is bonded (paired).
    internal static var ACTION_BOND_STATE_CHANGED: String {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "ACTION_BOND_STATE_CHANGED",
                fieldType: "Ljava/lang/String;",
                fieldCache: &JNICache.FieldID.ACTION_BOND_STATE_CHANGED,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return String(__value)
        }
    }
    
    /// Broadcast Action: Bluetooth class of a remote device has changed.
    internal static var ACTION_CLASS_CHANGED: String {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "ACTION_CLASS_CHANGED",
                fieldType: "Ljava/lang/String;",
                fieldCache: &JNICache.FieldID.ACTION_CLASS_CHANGED,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return String(__value)
        }
    }
    
    /// Broadcast Action: Remote device discovered.
    internal static var ACTION_FOUND: String {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "ACTION_FOUND",
                fieldType: "Ljava/lang/String;",
                fieldCache: &JNICache.FieldID.ACTION_FOUND,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return String(__value)
        }
    }
    
    /// Broadcast Action: Indicates the friendly name of a remote device has been retrieved for the first time, or changed since the last retrieval.
    internal static var ACTION_NAME_CHANGED: String {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "ACTION_NAME_CHANGED",
                fieldType: "Ljava/lang/String;",
                fieldCache: &JNICache.FieldID.ACTION_NAME_CHANGED,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return String(__value)
        }
    }
    
    /// Broadcast Action: This intent is used to broadcast PAIRING REQUEST
    internal static var ACTION_PAIRING_REQUEST: String {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "ACTION_PAIRING_REQUEST",
                fieldType: "Ljava/lang/String;",
                fieldCache: &JNICache.FieldID.ACTION_PAIRING_REQUEST,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return String(__value)
        }
    }
    
    /// Broadcast Action: This intent is used to broadcast the UUID wrapped as a ParcelUuid of the remote device after it has been fetched.
    /// This intent is sent only when the UUIDs of the remote device are requested to be fetched using Service Discovery Protocol.
    internal static var ACTION_UUID: String {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "ACTION_UUID",
                fieldType: "Ljava/lang/String;",
                fieldCache: &JNICache.FieldID.ACTION_UUID,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return String(__value)
        }
    }
    
    /// A shared link keys exists locally for the remote device, so communication can be authenticated and encrypted.
    internal static var BOND_BONDED: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "BOND_BONDED",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.BOND_BONDED,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    /// Indicates bonding (pairing) is in progress with the remote device.
    internal static var BOND_BONDING: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "BOND_BONDING",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.BOND_BONDING,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    /// Indicates the remote device is not bonded (paired).
    internal static var BOND_NONE: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "BOND_NONE",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.BOND_NONE,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    /// Bluetooth device type, Classic - BR/EDR devices
    internal static var DEVICE_TYPE_CLASSIC: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "DEVICE_TYPE_CLASSIC",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.DEVICE_TYPE_CLASSIC,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    /// Bluetooth device type, Dual Mode - BR/EDR/LE
    internal static var DEVICE_TYPE_DUAL: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "DEVICE_TYPE_DUAL",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.DEVICE_TYPE_DUAL,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    /// Bluetooth device type, Low Energy - LE-only
    internal static var DEVICE_TYPE_LE: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "DEVICE_TYPE_LE",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.DEVICE_TYPE_LE,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    /// Bluetooth device type, Unknown
    internal static var DEVICE_TYPE_UNKNOWN: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "DEVICE_TYPE_UNKNOWN",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.DEVICE_TYPE_UNKNOWN,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    /// Sentinel error value for this class. Guaranteed to not equal any other integer constant in this class.
    /// Provided as a convenience for functions that require a sentinel error value, for example:
    /// Intent.getIntExtra(BluetoothDevice.EXTRA_BOND_STATE, BluetoothDevice.ERROR)
    internal static var ERROR: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "ERROR",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.ERROR,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    /// Used as an int extra field in ACTION_BOND_STATE_CHANGED intents. Contains the bond state of the remote device.
    internal static var EXTRA_BOND_STATE: String {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "EXTRA_BOND_STATE",
                fieldType: "Ljava/lang/String;",
                fieldCache: &JNICache.FieldID.EXTRA_BOND_STATE,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return String(__value)
        }
    }
    
    /// Used as a Parcelable BluetoothClass extra field in ACTION_FOUND and ACTION_CLASS_CHANGED intents.
    internal static var EXTRA_CLASS: String {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "EXTRA_CLASS",
                fieldType: "Ljava/lang/String;",
                fieldCache: &JNICache.FieldID.EXTRA_CLASS,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return String(__value)
        }
    }
    
    /// Used as a Parcelable BluetoothDevice extra field in every intent broadcast by this class. It contains the BluetoothDevice that the intent applies to.
    internal static var EXTRA_DEVICE: String {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "EXTRA_DEVICE",
                fieldType: "Ljava/lang/String;",
                fieldCache: &JNICache.FieldID.EXTRA_DEVICE,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return String(__value)
        }
    }
    
    /// Used as a String extra field in ACTION_NAME_CHANGED and ACTION_FOUND intents. It contains the friendly Bluetooth name.
    internal static var EXTRA_NAME: String {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "EXTRA_NAME",
                fieldType: "Ljava/lang/String;",
                fieldCache: &JNICache.FieldID.EXTRA_NAME,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return String(__value)
        }
    }
    
    /// Used as an int extra field in ACTION_PAIRING_REQUEST intents as the value of passkey.
    internal static var EXTRA_PAIRING_KEY: String {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "EXTRA_PAIRING_KEY",
                fieldType: "Ljava/lang/String;",
                fieldCache: &JNICache.FieldID.EXTRA_PAIRING_KEY,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return String(__value)
        }
    }
    
    /// Used as an int extra field in ACTION_PAIRING_REQUEST intents to indicate pairing method used. Possible values are: PAIRING_VARIANT_PIN, PAIRING_VARIANT_PASSKEY_CONFIRMATION,
    internal static var EXTRA_PAIRING_VARIANT: String {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "EXTRA_PAIRING_VARIANT",
                fieldType: "Ljava/lang/String;",
                fieldCache: &JNICache.FieldID.EXTRA_PAIRING_VARIANT,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return String(__value)
        }
    }
    
    /// Used as an int extra field in ACTION_BOND_STATE_CHANGED intents. Contains the previous bond state of the remote device.
    internal static var EXTRA_PREVIOUS_BOND_STATE: String {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "EXTRA_PREVIOUS_BOND_STATE",
                fieldType: "Ljava/lang/String;",
                fieldCache: &JNICache.FieldID.EXTRA_PREVIOUS_BOND_STATE,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return String(__value)
        }
    }
    
    /// Used as an optional short extra field in ACTION_FOUND intents. Contains the RSSI value of the remote device as reported by the Bluetooth hardware.
    internal static var EXTRA_RSSI: String {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "EXTRA_RSSI",
                fieldType: "Ljava/lang/String;",
                fieldCache: &JNICache.FieldID.EXTRA_RSSI,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return String(__value)
        }
    }
    
    /// Used as an extra field in ACTION_UUID intents, Contains the ParcelUuids of the remote device which is a parcelable version of UUID.
    internal static var EXTRA_UUID: String {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "EXTRA_UUID",
                fieldType: "Ljava/lang/String;",
                fieldCache: &JNICache.FieldID.EXTRA_UUID,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return String(__value)
        }
    }
    
    /// The user will be prompted to confirm the passkey displayed on the screen or an app will confirm the passkey for the user.
    internal static var PAIRING_VARIANT_PASSKEY_CONFIRMATION: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "PAIRING_VARIANT_PASSKEY_CONFIRMATION",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.PAIRING_VARIANT_PASSKEY_CONFIRMATION,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    /// The user will be prompted to enter a pin or an app will enter a pin for user.
    internal static var PAIRING_VARIANT_PIN: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "PAIRING_VARIANT_PIN",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.PAIRING_VARIANT_PIN,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    /// Bluetooth LE 1M PHY.
    internal static var PHY_LE_1M: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "PHY_LE_1M",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.PHY_LE_1M,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    /// Bluetooth LE 1M PHY mask.
    internal static var PHY_LE_1M_MASK: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "PHY_LE_1M_MASK",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.PHY_LE_1M_MASK,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    /// Bluetooth LE 2M PHY.
    internal static var PHY_LE_2M: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "PHY_LE_2M",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.PHY_LE_2M,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    /// Bluetooth LE 2M PHY mask.
    internal static var PHY_LE_2M_MASK: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "PHY_LE_2M_MASK",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.PHY_LE_2M_MASK,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    /// Bluetooth LE Coded PHY.
    internal static var PHY_LE_CODED: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "PHY_LE_CODED",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.PHY_LE_CODED,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    /// Bluetooth LE Coded PHY mask.
    internal static var PHY_LE_CODED_MASK: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "PHY_LE_CODED_MASK",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.PHY_LE_CODED_MASK,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    /// No preferred coding when transmitting on the LE Coded PHY.
    internal static var PHY_OPTION_NO_PREFERRED: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "PHY_OPTION_NO_PREFERRED",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.PHY_OPTION_NO_PREFERRED,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    /// Prefer the S=2 coding to be used when transmitting on the LE Coded PHY.
    internal static var PHY_OPTION_S2: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "PHY_OPTION_S2",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.PHY_OPTION_S2,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    /// Prefer the S=8 coding to be used when transmitting on the LE Coded PHY.
    internal static var PHY_OPTION_S8: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "PHY_OPTION_S8",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.PHY_OPTION_S8,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    /// No preferrence of physical transport for GATT connections to remote dual-mode devices
    internal static var TRANSPORT_AUTO: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "TRANSPORT_AUTO",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.TRANSPORT_AUTO,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    /// Prefer BR/EDR transport for GATT connections to remote dual-mode devices
    internal static var TRANSPORT_BREDR: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "TRANSPORT_BREDR",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.TRANSPORT_BREDR,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    /// Prefer LE transport for GATT connections to remote dual-mode devices
    internal static var TRANSPORT_LE: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "TRANSPORT_LE",
                fieldType: "I",
                fieldCache: &JNICache.FieldID.TRANSPORT_LE,
                className: JNICache.className,
                classCache: &JNICache.jniClass )
            
            return Int(__value)
        }
    }
}

// MARK: - JNI

private extension Android.Bluetooth.Device {
    
    /// JNI Cache
    struct JNICache {
        
        /// JNI Java class name
        static let className = "android/bluetooth/BluetoothDevice"
        
        /// JNI Java class
        static var jniClass: jclass?
        
        /// JNI Field ID cache
        struct FieldID {
            
            static var ACTION_ACL_CONNECTED: jfieldID?
            static var ACTION_ACL_DISCONNECTED: jfieldID?
            static var ACTION_ACL_DISCONNECT_REQUESTED: jfieldID?
            static var ACTION_BOND_STATE_CHANGED: jfieldID?
            static var ACTION_CLASS_CHANGED: jfieldID?
            static var ACTION_FOUND: jfieldID?
            static var ACTION_NAME_CHANGED: jfieldID?
            static var ACTION_PAIRING_REQUEST: jfieldID?
            static var ACTION_UUID: jfieldID?
            static var BOND_BONDED: jfieldID?
            static var BOND_BONDING: jfieldID?
            static var BOND_NONE: jfieldID?
            static var DEVICE_TYPE_CLASSIC: jfieldID?
            static var DEVICE_TYPE_DUAL: jfieldID?
            static var DEVICE_TYPE_LE: jfieldID?
            static var DEVICE_TYPE_UNKNOWN: jfieldID?
            static var ERROR: jfieldID?
            static var EXTRA_BOND_STATE: jfieldID?
            static var EXTRA_CLASS: jfieldID?
            static var EXTRA_DEVICE: jfieldID?
            static var EXTRA_NAME: jfieldID?
            static var EXTRA_PAIRING_KEY: jfieldID?
            static var EXTRA_PAIRING_VARIANT: jfieldID?
            static var EXTRA_PREVIOUS_BOND_STATE: jfieldID?
            static var EXTRA_RSSI: jfieldID?
            static var EXTRA_UUID: jfieldID?
            static var PAIRING_VARIANT_PASSKEY_CONFIRMATION: jfieldID?
            static var PAIRING_VARIANT_PIN: jfieldID?
            static var PHY_LE_1M: jfieldID?
            static var PHY_LE_1M_MASK: jfieldID?
            static var PHY_LE_2M: jfieldID?
            static var PHY_LE_2M_MASK: jfieldID?
            static var PHY_LE_CODED: jfieldID?
            static var PHY_LE_CODED_MASK: jfieldID?
            static var PHY_OPTION_NO_PREFERRED: jfieldID?
            static var PHY_OPTION_S2: jfieldID?
            static var PHY_OPTION_S8: jfieldID?
            static var TRANSPORT_AUTO: jfieldID?
            static var TRANSPORT_BREDR: jfieldID?
            static var TRANSPORT_LE: jfieldID?
        }
        
        /// JNI Method ID cache
        struct MethodID {
            
            static var getAddress: jmethodID?
        }
    }
}
