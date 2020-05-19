#include <string>

// https://stackoverflow.com/a/37109258/5578773

static const char* B64chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

std::string b64encode(const void* data, const size_t& len)
{
    std::string result((len + 2) / 3 * 4, '=');
    char* str = &result[0];
    auto p = (unsigned char*)data;
    size_t j = 0, pad = len % 3;
    const size_t last = len - pad;

    for (size_t i = 0; i < last; i += 3)
    {
        int n = int(p[i]) << 16 | int(p[i + 1]) << 8 | p[i + 2];
        str[j++] = B64chars[n >> 18];
        str[j++] = B64chars[(n >> 12) & 0x3F];
        str[j++] = B64chars[(n >> 6) & 0x3F];
        str[j++] = B64chars[n & 0x3F];
        
    }
    if (pad)  /// set padding
    {
        int n = --pad ? int(p[last]) << 8 | p[last + 1] : p[last];
        str[j++] = B64chars[pad ? n >> 10 & 0x3F : n >> 2];
        str[j++] = B64chars[pad ? n >> 4 & 0x03F : n << 4 & 0x3F];
        str[j++] = pad ? B64chars[n << 2 & 0x3F] : '=';
    }
    return result;
}