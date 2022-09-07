package daily;

import util.TreeNode;

public class BinaryTreePruning {
    public TreeNode pruneTree(TreeNode root) {
        if (root == null) return null;
        if (pruneTree(root.left) == null) {
            root.left = null;
        }
        if (pruneTree(root.right) == null) {
            root.right = null;
        }
        if (root.val == 0 && root.left == null && root.right == null) return null;
        return root;
    }
}
