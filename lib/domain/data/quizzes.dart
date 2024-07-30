 import 'package:quizz_game/domain/entity/question.dart';

 List<Question<dynamic>> techQuestions = [
    Question<String>(
      title: 'What is Flutter?',
      duration: 30,
      answer: 'UI toolkit',
      suggestions: [
        'UI toolkit',
        'Mobile',
        'Cross-platform',
        'Google',
        'Dart',
        'Widgets',
        'Hot reload',
        'Performance'
      ],
    ),
    Question<String>(
      title: 'What is Dart?',
      duration: 15,
      answer: 'Language',
      suggestions: [
        'Language',
        'Programming',
        'Google',
        'Fast',
        'Cross-platform',
        'Object-oriented',
        'Web',
        'Mobile'
      ],
    ),
    Question<String>(
      title: 'What is a REST API?',
      duration: 10,
      answer: 'Interface',
      suggestions: [
        'Interface',
        'HTTP',
        'GET',
        'POST',
        'PUT',
        'DELETE',
        'Stateless',
        'Resources',
        'URIs'
      ],
    ),
    Question<String>(
      title: 'What is GraphQL?',
      duration: 12,
      answer: 'Query',
      suggestions: [
        'Query',
        'APIs',
        'Data',
        'Facebook',
        'Schema',
        'Types',
        'Resolvers',
        'Mutations'
      ],
    ),
    Question<String>(
      title: 'What is Kubernetes?',
      duration: 11,
      answer: 'Orchestration',
      suggestions: [
        'Orchestration',
        'Containers',
        'Deployment',
        'Scaling',
        'Management',
        'Pods',
        'Nodes',
        'Clusters'
      ],
    ),
    Question<String>(
      title: 'What is Docker?',
      duration: 13,
      answer: 'Containers',
      suggestions: [
        'Containers',
        'Images',
        'Docker Hub',
        'Virtualization',
        'Microservices',
        'Isolation',
        'Deployment',
        'Consistency'
      ],
    ),
    Question<String>(
      title: 'What is CI/CD?',
      duration: 13,
      answer: 'Automation',
      suggestions: [
        'Automation',
        'Integration',
        'Deployment',
        'Build',
        'Test',
        'Deploy',
        'Pipeline',
        'Version control'
      ],
    ),
    Question<String>(
      title: 'What is DevOps?',
      duration: 14,
      answer: 'Collaboration',
      suggestions: [
        'Collaboration',
        'Development',
        'Operations',
        'Automation',
        'Monitoring',
        'Delivery',
        'Infrastructure',
        'Agile'
      ],
    ),
    Question<String>(
      title: 'What is Agile methodology?',
      duration: 14,
      answer: 'Flexible',
      suggestions: [
        'Flexible',
        'Iterative',
        'Incremental',
        'Scrum',
        'Kanban',
        'Stories',
        'Sprints',
        'Collaboration'
      ],
    ),
    Question<String>(
      title: 'What is Scrum?',
      duration: 11,
      answer: 'Framework',
      suggestions: [
        'Framework',
        'Sprints',
        'Master',
        'Owner',
        'Team',
        'Backlog',
        'Standup',
        'Retrospective'
      ],
    ),
  
  
  ];