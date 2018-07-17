//
//  GraphicsDrawableColorDrawable.swift
//  Android
//
//  Created by Marco Estrella on 7/17/18.
//

import Foundation
import java_lang

public extension Android.Graphics.Drawable {
    
    public typealias ColorDrawable = AndroidGraphicsDrawableColorDrawable
}

public class AndroidGraphicsDrawableColorDrawable: JavaObject {
    
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
    
    public convenience init(color: Int){
        
        var __locals = [jobject]()
        
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = jvalue(i: jint(color))
        
        let __object = JNIMethod.NewObject(
            className: JNICache.className,
            classCache: &JNICache.jniClass,
            methodSig: "(I)V",
            methodCache: &JNICache.MethodID.newMethod1,
            args: &__args,
            locals: &__locals )
        
        self.init( javaObject: __object )
        
        JNI.DeleteLocalRef( __object )
    }
    
    public convenience init(){
        
        var __locals = [jobject]()
        
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        
        let __object = JNIMethod.NewObject(
            className: JNICache.className,
            classCache: &JNICache.jniClass,
            methodSig: "()V",
            methodCache: &JNICache.MethodID.newMethod2,
            args: &__args,
            locals: &__locals )
        
        self.init( javaObject: __object )
        
        JNI.DeleteLocalRef( __object )
    }
    
    public var color : Int {
        get {
            return getColor() ?? 0
        }
        set {
            setColor(newValue)
        }
    }
    
    public var alpha : Int {
        get {
            return getAlpha() ?? 0
        }
        set {
            setAlpha(newValue)
        }
    }
}

public extension AndroidGraphicsDrawableColorDrawable {
    
    internal func getColor() -> Int? {
        
        var __locals = [jobject]()
        
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        
        let __return = JNIMethod.CallIntMethod(
            object: javaObject,
            methodName: "getColor",
            methodSig: "()I",
            methodCache: &JNICache.MethodID.getColor,
            args: &__args,
            locals: &__locals )
        
        return Int(__return)
    }
    
    internal func setColor(_ color: Int) {
        
        var __locals = [jobject]()
        
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        
        __args[0] = jvalue(i: jint(color))
        
        JNIMethod.CallVoidMethod(
            object: javaObject,
            methodName: "setColor",
            methodSig: "(I)V",
            methodCache: &JNICache.MethodID.setColor,
            args: &__args,
            locals: &__locals )
    }
    
    internal func getAlpha() -> Int? {
        
        var __locals = [jobject]()
        
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        
        let __return = JNIMethod.CallIntMethod(
            object: javaObject,
            methodName: "getAlpha",
            methodSig: "()I",
            methodCache: &JNICache.MethodID.getAlpha,
            args: &__args,
            locals: &__locals )
        
        return Int(__return)
    }
    
    internal func setAlpha(_ color: Int) {
        
        var __locals = [jobject]()
        
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        
        __args[0] = jvalue(i: jint(color))
        
        JNIMethod.CallVoidMethod(
            object: javaObject,
            methodName: "setAlpha",
            methodSig: "(I)V",
            methodCache: &JNICache.MethodID.setAlpha,
            args: &__args,
            locals: &__locals )
    }
    
    public func getOpacity() -> Int? {
        
        var __locals = [jobject]()
        
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        
        let __return = JNIMethod.CallIntMethod(
            object: javaObject,
            methodName: "getOpacity",
            methodSig: "()I",
            methodCache: &JNICache.MethodID.getOpacity,
            args: &__args,
            locals: &__locals )
        
        return Int(__return)
    }
}

public extension AndroidGraphicsDrawableColorDrawable {
    
    /// JNI Cache
    struct JNICache {
        
        /// JNI Java class signature
        static let classSignature = Android.Graphics.Drawable.className(["ColorDrawable"])
        
        /// JNI Java class name
        static let className = classSignature.rawValue
        
        /// JNI Java class
        static var jniClass: jclass?
        
        /// JNI Method ID cache
        struct MethodID {
            
            static var newMethod1: jmethodID?
            static var newMethod2: jmethodID?
            static var getColor: jmethodID?
            static var setColor: jmethodID?
            static var setAlpha: jmethodID?
            static var getAlpha: jmethodID?
            static var getOpacity: jmethodID?
        }
    }
}
