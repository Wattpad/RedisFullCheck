package common

/*
 * @Vinllen Chen. check filter hit the key.
 * return: true/false. true means pass.
 * Actually, it's better to use trie tree instead of for-loop brute way. The reason I choose this is because
 * input filterList is not long in general, and I'm a lazy guy~.
 */
func CheckFilter(filterTree *Trie, keyBytes []byte) bool {
	if filterTree == nil { // all pass when filter list is empty
		return true
	}
	return filterTree.Search(keyBytes)
}