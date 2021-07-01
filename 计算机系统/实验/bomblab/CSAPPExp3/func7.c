int fun7(Node *root, int val)
{
    if (root->value == val)
        return 0;
    else if (root->value > val)
        return 2 * fun7(root->left, val);
    else
        return 2 * fun7(root->right, val) + 1;
}