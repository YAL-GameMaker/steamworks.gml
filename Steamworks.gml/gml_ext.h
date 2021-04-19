#pragma once
#include <vector>
#if ((defined(_MSVC_LANG) && _MSVC_LANG >= 201703L) || __cplusplus >= 201703L)
#include <optional>
#endif
#include <stdint.h>
using namespace std;

#define dllg /* tag */

#if defined(WIN32)
#define dllx extern "C" __declspec(dllexport)
#elif defined(GNUC)
#define dllx extern "C" __attribute__ ((visibility("default"))) 
#else
#define dllx extern "C"
#endif

template<typename T> struct gml_vector {
	uint32_t length;
	const T* array;
	gml_vector() : length(0), array(nullptr) {}
	gml_vector(uint32_t _length, const T* _array) : length(_length), array(_array) {
		//
	}
	uint32_t size() {
		return length;
	}
	const T& operator[](int index) {
		return array[index];
	}
	const T* begin() { return array; }
	const T* end() { return array + length; }
};

// Allows to sequentially read/write data at given memory address (of a GML-side preallocated buffer)
class gml_buffer {
	char* pos;
	char* start;
public:
	gml_buffer(void* origin) : pos((char*)origin), start((char*)origin) {}
	//
	void rewind() {
		pos = start;
	}
	//
	template<class T> T read() {
		T r = *(T*)pos;
		pos += sizeof(T);
		return r;
	}
	template<class T> void write(T val) {
		*(T*)pos = val;
		pos += sizeof(T);
	}
	//
	template<class T> T* read_array(size_t count) {
		T* arr = (T*)pos;
		pos += sizeof(T) * count;
		return arr;
	}
	template<class T> void write_array(T* arr, size_t count) {
		write<uint32_t>(count);
		auto byte_count = sizeof(T) * count;
		memcpy(pos, arr, byte_count);
		pos += byte_count;
	}
	//
	char* read_string() {
		char* r = pos;
		while (*pos != 0) pos++;
		pos++;
		return r;
	}
	void write_string(const char* s) {
		for (int i = 0; s[i] != 0; i++) write<char>(s[i]);
		write<char>(0);
	}
	//
	template<class T> gml_vector<T> read_gml_vector() {
		auto size = read<uint32_t>();
		gml_vector<T> v(size, (T*)pos);
		pos += size * sizeof(T);
		return v;
	}
	//
	template<class T> std::vector<T> read_vector() {
		auto n = read<uint32_t>();
		vector<T> vec((T*)pos, (T*)pos + n);
		return vec;
	}
	template<class T> void write_vector(std::vector<T>& vec) {
		auto n = vec.size();
		write<uint32_t>(n);
		for (auto i = 0u; i < n; i++) write<T>(vec[i]);
	}

	#pragma region Tuples
	template<class A, class B> std::tuple<A, B> read_tuple() {
		A a = read<A>();
		B b = read<B>();
		return std::tuple<A, B>(a, b);
	}
	template<class A, class B> void write_tuple(std::tuple<A, B>& tup) {
		write<A>(std::get<0>(tup));
		write<B>(std::get<1>(tup));
	}

	template<class A, class B, class C> std::tuple<A, B, C> read_tuple() {
		A a = read<A>();
		B b = read<B>();
		C c = read<C>();
		return std::tuple<A, B, C>(a, b, c);
	}
	template<class A, class B, class C> void write_tuple(std::tuple<A, B, C>& tup) {
		write<A>(std::get<0>(tup));
		write<B>(std::get<1>(tup));
		write<C>(std::get<2>(tup));
	}

	template<class A, class B, class C, class D> std::tuple<A, B, C, D> read_tuple() {
		A a = read<A>();
		B b = read<B>();
		C c = read<C>();
		D d = read<d>();
		return std::tuple<A, B, C, D>(a, b, c, d);
	}
	template<class A, class B, class C, class D> void write_tuple(std::tuple<A, B, C, D>& tup) {
		write<A>(std::get<0>(tup));
		write<B>(std::get<1>(tup));
		write<C>(std::get<2>(tup));
		write<D>(std::get<3>(tup));
	}
	#pragma endregion

	#if ((defined(_MSVC_LANG) && _MSVC_LANG >= 201703L) || __cplusplus >= 201703L) // optional
	template<class T> optional<T> read_optional() {
		if (read<bool>()) {
			return read<T>;
		} else return {};
	}
	template<class T> void write_optional(optional<T>& val) {
		auto hasValue = val.has_value();
		write<bool>(hasValue);
		if (hasValue) write<T>(val.value());
	}
	#endif
};
