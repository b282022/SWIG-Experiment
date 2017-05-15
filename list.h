 #include <bits/stdc++.h>

template <typename T>
class List
{
	public:
		T* data;
		int max_items;
		int n_items;
		List(int max);
		void append(T d);
		T get(int index);
};

typedef List<int> IntList;
typedef List<float> FloatList;


