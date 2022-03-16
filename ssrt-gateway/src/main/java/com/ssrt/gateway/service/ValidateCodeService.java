package com.ssrt.gateway.service;

import java.io.IOException;
import com.ssrt.common.core.exception.CaptchaException;
import com.ssrt.common.core.web.domain.AjaxResult;

/**
 * 验证码处理
 *
 * @author ssrt
 */
public interface ValidateCodeService
{
    /**
     * 生成验证码
     */
    public AjaxResult createCaptcha() throws IOException, CaptchaException;

    /**
     * 校验验证码
     */
    public void checkCaptcha(String key, String value) throws CaptchaException;
}
