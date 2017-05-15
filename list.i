%module list_swig

%{
        #include "list.h"
%}

template <class T>
class List {
        public:
      		T* data;
      		int max_items;
      		int n_items;
      		List(int max);
      		void append(T data);
      		T get(int index);
};

template <class T> List<T>::List(int max) {
	max_items = max;
	data = new T[max_items];
	n_items = 0;
}

template <class T> void List<T>::append(T d) {
	if(n_items < max_items)
		data[n_items++] = d
}

template <class T> T List<T>::get(int index) {
	return data[index];
}


%template(IntList) List <int>;
%template(FloatList) List <float>;
