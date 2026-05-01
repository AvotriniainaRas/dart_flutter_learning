class CompteurAvecBuilder extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  final int _maxLength = 150;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Compteur avec InputDecoration')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ValueListenableBuilder(
          valueListenable: _controller,
          builder: (context, TextEditingValue value, child) {
            int length = value.text.length;
            return TextField(
              controller: _controller,
              maxLength: _maxLength,
              decoration: InputDecoration(
                labelText: 'Commentaire',
                border: OutlineInputBorder(),
                counter: Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: length > _maxLength ? Colors.red[100] : Colors.grey[200],
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        length > _maxLength ? Icons.warning : Icons.info,
                        size: 16,
                        color: length > _maxLength ? Colors.red : Colors.grey,
                      ),
                      SizedBox(width: 4),
                      Text(
                        '$length/$_maxLength',
                        style: TextStyle(
                          color: length > _maxLength ? Colors.red : Colors.grey[700],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}