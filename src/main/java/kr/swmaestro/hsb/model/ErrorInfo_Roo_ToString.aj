// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package kr.swmaestro.hsb.model;

import java.lang.String;

privileged aspect ErrorInfo_Roo_ToString {
    
    public String ErrorInfo.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Arguments: ").append(getArguments() == null ? "null" : getArguments().size()).append(", ");
        sb.append("Code: ").append(getCode()).append(", ");
        sb.append("DefaultMessage: ").append(getDefaultMessage());
        return sb.toString();
    }
    
}